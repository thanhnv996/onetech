package com.exam.order.web;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.exam.order.model.BigCategory;
import com.exam.order.model.Const;
import com.exam.order.model.Product;
import com.exam.order.service.BigCategoryService;
import com.exam.order.service.ConstService;
import com.exam.order.service.UserService;

import org.springframework.security.core.userdetails.User;

@ControllerAdvice
public class HandlerInterceptorController {
	@Autowired
	private BigCategoryService bigCategoryService;

	@Autowired
	private UserService userService;

	@Autowired
	private ConstService constService;

	@ModelAttribute("bigCategories")
	public List<BigCategory> getAllBigAllCategory() {
		return bigCategoryService.findAll();
	}

	@ModelAttribute("productVieweds")
	public List<Product> getAllProductViewed() {
		try {
			User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			com.exam.order.model.User userEntity = userService.findByUsername(user.getUsername());
			return userEntity.getProducts();
		} catch (Exception e) {
//			e.printStackTrace();
			return null;
		}
	}

	@ModelAttribute("phone")
	public String getPhone() {
		return constService.findAll().stream().filter(_const -> _const.getCode().equals("phone")).collect(Collectors.toList()).get(0)
				.getValue();
	}

	@ModelAttribute("email")
	public String getEmail() {
		return constService.findAll().stream().filter(_const -> _const.getCode().equals("email")).collect(Collectors.toList()).get(0)
				.getValue();
	}

	public String getPasswordEmail() {
		return constService.findAll().stream().filter(_const -> _const.getCode().equals("password_mail")).collect(Collectors.toList())
				.get(0).getValue();
	}

	@ModelAttribute("addressList")
	public List<Const> getAddressList() {
		return constService.findAll().stream().filter(_const -> _const.getCode().equals("address")).collect(Collectors.toList());
	}

	@ModelAttribute("bankName")
	public String getBankName() {
		return constService.findAll().stream().filter(_const -> _const.getCode().equals("bank_name")).collect(Collectors.toList())
				.get(0).getValue();
	}

	@ModelAttribute("bankList")
	public List<Const> getBankList() {
		return constService.findAll().stream().filter(_const -> _const.getCode().equals("bank")).collect(Collectors.toList());
	}

	@ModelAttribute("facebookLink")
	public String getFacebookLink() {
		return constService.findAll().stream().filter(_const -> _const.getCode().equals("facebook_link")).collect(Collectors.toList())
				.get(0).getValue();
	}

	@ModelAttribute("twitterLink")
	public String getTwitterLink() {
		return constService.findAll().stream().filter(_const -> _const.getCode().equals("twitter_link")).collect(Collectors.toList())
				.get(0).getValue();
	}

	@ModelAttribute("youtubeLink")
	public String getYoutubeLink() {
		return constService.findAll().stream().filter(_const -> _const.getCode().equals("youtube_link")).collect(Collectors.toList())
				.get(0).getValue();
	}

	@ModelAttribute("nameProject")
	public String getNameProject() {
		return constService.findAll().stream().filter(_const -> _const.getCode().equals("name_project")).collect(Collectors.toList())
				.get(0).getValue();
	}
}
