package com.exam.order.web;

import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.exam.order.model.BigCategory;
import com.exam.order.model.Customer;
import com.exam.order.model.MenuCategory;
import com.exam.order.model.Order;
import com.exam.order.model.OrderdetailId;
import com.exam.order.model.Product;
import com.exam.order.model.User;
import com.exam.order.service.BigCategoryService;
import com.exam.order.service.MenuCategoryService;
import com.exam.order.service.OrderDetailService;
import com.exam.order.service.OrderService;
import com.exam.order.service.ProductService;

@Controller
public class AdminController {
	@Autowired
	private BigCategoryService bigCategoryService;

	@Autowired
	private ProductService productService;

	@Autowired
	private OrderService orderService;

	@Autowired
	private OrderDetailService orderDetailService;

	@Autowired
	private MenuCategoryService menuCategoryService;

	@RequestMapping(value = "/admin/order", method = RequestMethod.GET)
	public ModelAndView showOrdered(Model model) {
		ModelAndView map = new ModelAndView("pages/dashboard/order_list");

		List<Order> orders = orderService.findAll();
		map.addObject("orders", orders);

		return map;
	}

	@RequestMapping(value = "/admin/order/{orderId}/changeStatus", method = RequestMethod.GET)
	public String changeStatusOrder(@PathVariable("orderId") int orderId, Model model) {
		Order order = orderService.findById(orderId);
		if (order.getStatus().equals("ORDERED"))
			order.setStatus("SHIPPING");
		else if (order.getStatus().equals("SHIPPING"))
			order.setStatus("SHIPPED");
		else if (order.getStatus().equals("SHIPPED"))
			order.setStatus("ORDERED");
		orderService.save(order);

		return "redirect:/admin/order";
	}

	@RequestMapping(value = "/admin/order/{orderId}/delete", method = RequestMethod.GET)
	public String deleteOrder(@PathVariable("orderId") int orderId, Model model) {
		Order order = orderService.findById(orderId);
		orderDetailService.deleteById(new OrderdetailId(orderId, order.getOrderdetails().get(0).getProduct().getId()));
		orderService.delete(orderId);

		return "redirect:/admin/order";
	}

	@RequestMapping(value = "/admin/product", method = RequestMethod.GET)
	public ModelAndView showAllProduct(Model model) {
		ModelAndView map = new ModelAndView("pages/dashboard/product");

		List<Product> products = productService.findAll();
		map.addObject("products", products);

		List<MenuCategory> menuCategories = menuCategoryService.findAll();
		map.addObject("menuCategories", menuCategories);

		return map;
	}

	@RequestMapping(value = "/admin/product/add", method = RequestMethod.POST)
	public String addProduct(Model model, @RequestParam("productName") String productName,
			@RequestParam("menuCategoryId") int menuCategoryId,
			@RequestParam("productDescription") String productDescription,
			@RequestParam("quantityInStock") int quantityInStock, @RequestParam("buyPrice") int buyPrice,
			@RequestParam("msrp") int msrp, @RequestParam("fileImage") MultipartFile fileImage)
			throws IllegalStateException, IOException {
		String fileName = fileImage.getOriginalFilename();
		File file = new File(System.getProperty("user.dir") + "\\src\\main\\webapp\\resources\\images", fileName);
		fileImage.transferTo(file);

		Product product = new Product();
		product.setProductName(productName);
		product.setMenucategory(menuCategoryService.findById(Long.valueOf(menuCategoryId)));
		product.setProductDescription(productDescription);
		product.setQuantityInStock((short) quantityInStock);
		product.setBuyPrice(new BigDecimal(buyPrice));
		product.setMsrp(new BigDecimal(msrp));
		product.setProductcale("");
		product.setProductVendor("");
		product.setTax(new BigDecimal("0"));
		product.setUrlImage(fileName);

		productService.save(product);

		return "redirect:/admin/product";
	}

	@RequestMapping(value = "/admin/product/{productId}/delete", method = RequestMethod.GET)
	public String deleteProduct(@PathVariable("productId") int productId, Model model) {

		productService.delete(productId);

		return "redirect:/admin/product";
	}

}
