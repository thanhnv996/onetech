package com.exam.order.service;

import java.util.List;

import com.exam.order.model.Product;

public interface ProductService {
	List<Product> findAll();

	Product findById(Integer id);

	List<Product> findAllBestDiscount();

	List<Product> findAllBestRates();

	List<Product> findAllByKeyword(String keyword);

	List<Product> findAllViewed(Integer userId);

	void delete(Integer id);

	void save(Product product);
}
