package com.exam.order.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.exam.order.model.BigCategory;
import com.exam.order.model.MenuCategory;
import com.exam.order.model.Product;
import com.exam.order.service.BigCategoryService;
import com.exam.order.service.ProductService;

@Controller
public class ShopController {
	@Autowired
	private BigCategoryService bigCategoryService;

	@Autowired
	private ProductService productService;

	@RequestMapping(value = "/category/{bigCategoryId}", method = RequestMethod.GET)
	public ModelAndView showProductOfBigCategory(@PathVariable("bigCategoryId") int bigCategoryId, Model model) {
		ModelAndView map = new ModelAndView("pages/shop/shop");

		List<BigCategory> bigCategories = bigCategoryService.findAll();
		map.addObject("bigCategories", bigCategories);

		for (BigCategory bigCategory : bigCategories) {
			if (bigCategory.getId() == bigCategoryId) {
				map.addObject("bigCategoryShow", bigCategory);
				int countProduct = 0;
				for (MenuCategory menuCategory : bigCategory.getMenucategories()) {
					countProduct += menuCategory.getProducts().size();
				}
				map.addObject("countProduct", countProduct);
				break;
			}
		}

		return map;
	}

	@RequestMapping(value = "/category/{bigCategoryId}/{categoryId}", method = RequestMethod.GET)
	public ModelAndView showProductOfCategory(@PathVariable("bigCategoryId") int bigCategoryId,
			@PathVariable("categoryId") int categoryId, Model model) {
		ModelAndView map = new ModelAndView("pages/shop/shop");

		List<BigCategory> bigCategories = bigCategoryService.findAll();
		map.addObject("bigCategories", bigCategories);

		for (BigCategory bigCategory : bigCategories) {
			if (bigCategory.getId() == bigCategoryId) {
				map.addObject("bigCategoryShow", bigCategory);
			}

			for (MenuCategory menuCategory : bigCategory.getMenucategories()) {
				if (menuCategory.getId() == categoryId) {
					map.addObject("categoryShow", menuCategory);
					map.addObject("countProduct", menuCategory.getProducts().size());
					break;
				}
			}
		}

		return map;
	}

	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public ModelAndView showProductOfBigCategory(@RequestParam("keyword") String keyword, Model model) {
		ModelAndView map = new ModelAndView("pages/shop/shop");
		List<Product> products = productService.findAllByKeyword(keyword);
		map.addObject("productSearchs", products);

		map.addObject("countProduct", products.size());

		return map;
	}
}
