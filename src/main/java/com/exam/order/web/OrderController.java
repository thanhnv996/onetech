package com.exam.order.web;

import com.exam.order.common.EmailService;
import com.exam.order.model.Customer;
import com.exam.order.model.Product;
import com.exam.order.model.Order;
import com.exam.order.model.OrderDetail;
import com.exam.order.model.OrderdetailId;
import com.exam.order.service.ConstService;
import com.exam.order.service.CustomerService;
import com.exam.order.service.ProductService;
import com.exam.order.service.OrderDetailService;
import com.exam.order.service.OrderService;
import com.exam.order.validator.CustomerValidator;
import com.sun.corba.se.spi.orb.StringPair;

import java.util.Date;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class OrderController {
	@Autowired
	private OrderService orderService;

	@Autowired
	private CustomerService customerService;

	@Autowired
	private OrderDetailService orderDetailService;

	@Autowired
	private ProductService productService;

	@Autowired
	private CustomerValidator customerValidator;

	@Autowired
	private ConstService constService;

	private static final String ORDERED = "ORDERED";

	@RequestMapping(value = "/product/{id}/cart", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
	public ModelAndView orderConfirm(@PathVariable("id") int id, @RequestParam("quantityOrder") int quantityOrder,
			Model model) {
		model.addAttribute("customerForm", new Customer());
		model.addAttribute("quantityOrder", quantityOrder);

		ModelAndView map = new ModelAndView("pages/cart/cart");

		Product product = productService.findById(id);
		map.addObject("product", product);

		return map;
	}

	@RequestMapping(value = "/order", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
	public ModelAndView insertOrder(@ModelAttribute("customerForm") Customer customerForm, BindingResult bindingResult,
			@RequestParam("couponCode") String couponCode, @RequestParam("productId") int productId,
			@RequestParam("quantityOrder") int quantityOrder, Model model) {

		customerValidator.validate(customerForm, bindingResult);

		ModelAndView map = new ModelAndView("pages/cart/order-success");
		Product product = productService.findById(productId);
		map.addObject("product", product);
		map.addObject("quantityOrder", quantityOrder);

		if (bindingResult.hasErrors()) {
			map.setViewName("pages/cart/cart");
			;
			map.addObject("customerForm", customerForm);

			return map;
		}

		Customer customer = (Customer) customerForm;
		customerService.save(customer);

		Order order = new Order();
		order.setCustomer(customer);
		order.setOrderDate(new Date());
		order.setStatus(ORDERED);
		order = orderService.save(order);

		OrderDetail orderDetail = new OrderDetail();
		orderDetail.setId(new OrderdetailId(order.getId(), product.getId()));
		orderDetail.setProduct(product);
		orderDetail.setOrderLineNumber((short) 123);
		orderDetail.setPriceEach(product.getBuyPrice());
		orderDetail.setQuantityOrdered(quantityOrder);
		orderDetailService.save(orderDetail);

		// JSONArray jArray = new JSONArray(orderJSON);
		Double sumPrice = 0d;

		// for (int i = 0; i < jArray.length(); i++) {
		// JSONObject jb = jArray.getJSONObject(i);
		//
		// Product product = productService.findById(jb.getInt("id"));
		//
		// OrderDetail orderDetail = new OrderDetail();
		// orderDetail.setId(new OrderdetailId(order.getId(), product.getId()));
		// orderDetail.setProduct(product);
		// orderDetail.setOrderLineNumber((short) 123);
		// orderDetail.setPriceEach(product.getBuyPrice());
		// orderDetail.setQuantityOrdered(jb.getInt("quantity"));
		// orderDetailService.save(orderDetail);
		//
		// sumPrice += product.getBuyPrice().intValue() * jb.getInt("quantity")
		// * (1d + product.getTax().doubleValue());
		// }

		sumPrice += product.getBuyPrice().intValue() * quantityOrder * (1d - product.getMsrp().doubleValue());

		if (CommonController.isValidCouponCode(couponCode)) {
			sumPrice *= 0.9;
			order.setCouponCode(couponCode);
		}

		order.setSumPrice(sumPrice.intValue());
		order = orderService.save(order);

		map.addObject("order", order);
		map.addObject("customer", customer);
		map.addObject("couponCode", couponCode);
		map.addObject("sumPrice", sumPrice.intValue());

		String[] to = { constService.findAll().stream().filter(_const -> _const.getCode().equals("email"))
				.collect(Collectors.toList()).get(0).getValue() };

		String subject = "Có đơn đặt hàng";

		StringBuilder body = new StringBuilder();
		body.append("Đơn đặt hàng mã:" + order.getId());
		body.append("\nĐặt: " + product.toString());
		body.append("\nSố lượng: " + quantityOrder);
		body.append("\nTổng tiền: " + String.format("%,d", sumPrice.intValue()));
		body.append("\nKhách hàng: " + customer.toString());

		EmailService.sendFromGMail(to, subject, body.toString());

		return map;
	}
}
