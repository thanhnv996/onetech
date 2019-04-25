package com.exam.order.web;

import com.exam.order.model.BigCategory;
import com.exam.order.model.MenuCategory;
import com.exam.order.model.OrderDetail;
import com.exam.order.service.BigCategoryService;
import com.exam.order.service.MenuCategoryService;
import com.exam.order.service.OrderDetailService;
import com.exam.order.service.ProductService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	@Autowired
	private BigCategoryService bigCategoryService;

	@Autowired
	private OrderDetailService orderDetailService;

	@Autowired
	private ProductService productService;

	@RequestMapping(value = { "/", "/index" }, method = RequestMethod.GET)
	public ModelAndView showHome(Model model) {
		List<BigCategory> bigCategories = bigCategoryService.findAll();

		for (BigCategory bigCategory : bigCategories) {
			bigCategory.setEmptyProduct(true);
			for (MenuCategory menuCategory : bigCategory.getMenucategories()) {
				if (menuCategory.getProducts().size() > 0) {
					bigCategory.setEmptyProduct(false);
					break;
				}
			}
		}
		ModelAndView map = new ModelAndView("pages/home/home");
		map.addObject("bigCategories", bigCategories);

		map.addObject("orderDetailBestSellers", orderDetailService.findAllBestSellers());

		map.addObject("productBestDiscounts", productService.findAllBestDiscount());
		
		map.addObject("productBestRates", productService.findAllBestRates());

		return map;
	}
}
