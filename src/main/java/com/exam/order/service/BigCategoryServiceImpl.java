package com.exam.order.service;

import com.exam.order.model.BigCategory;
import com.exam.order.repository.BigCategoryRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BigCategoryServiceImpl implements BigCategoryService {
	@Autowired
	private BigCategoryRepository bigCategoryRepository;

	@Override
	public List<BigCategory> findAll() {
		return bigCategoryRepository.findAll();
	}
}
