package com.exam.order.service;

import com.exam.order.model.Const;
import com.exam.order.repository.ConstRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ConstServiceImpl implements ConstService {
	@Autowired
	private ConstRepository constRepository;

	@Override
	public List<Const> findAll() {
		return constRepository.findAll();
	}
}
