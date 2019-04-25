package com.exam.order.service;

import com.exam.order.model.Product;
import com.exam.order.repository.ProductRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductRepository productRepository;

	@Override
	public List<Product> findAll() {
		return productRepository.findAll();
	}

	@Override
	public Product findById(Integer id) {
		return productRepository.findOne(id);
	};

	@Override
	public List<Product> findAllBestDiscount() {
		return productRepository.findAllBestDiscounts();
	};

	@Override
	public List<Product> findAllBestRates() {
		return productRepository.findAllBestRates();
	};

	@Override
	public List<Product> findAllByKeyword(String keyword) {
		return productRepository.findAllByKeyword(keyword);
	};

	@Override
	public List<Product> findAllViewed(Integer userId) {
		return productRepository.findAllViewed(userId);
	};

	@Override
	public void delete(Integer id) {
		productRepository.delete(id);
	}

	@Override
	public void save(Product product) {
		productRepository.save(product);
	};
}
