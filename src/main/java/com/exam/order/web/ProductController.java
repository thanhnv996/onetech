package com.exam.order.web;

import com.exam.order.model.Product;
import com.exam.order.model.User;
import com.exam.order.model.Viewed;
import com.exam.order.model.ViewedId;
import com.exam.order.service.ProductService;
import com.exam.order.service.UserService;
import com.exam.order.service.ViewedService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;

	@Autowired
	private ViewedService viewedService;

	@Autowired
	private UserService userService;

	@RequestMapping(value = { "/product/{productId}" }, method = RequestMethod.GET)
	public ModelAndView showHome(@PathVariable("productId") int productId, Model model) {
		Product product = productService.findById(productId);
		ModelAndView map = new ModelAndView("pages/product/product");
		map.addObject("product", product);

		try {
			org.springframework.security.core.userdetails.User user = (org.springframework.security.core.userdetails.User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			com.exam.order.model.User userEntity = userService.findByUsername(user.getUsername());
			boolean isViewed = false;
			for (Product productViewed : userEntity.getProducts()) {
				if (productViewed.getId() == productId) {
					isViewed = true;
					System.out.println("true");
					break;
				}
			}

			if (isViewed == false) {
				Viewed viewed = new Viewed(userEntity, product);
				viewedService.save(viewed);
				System.out.println("save");
			}
		} catch (Exception e) {
//			e.printStackTrace();
		}

		return map;
	}
}
