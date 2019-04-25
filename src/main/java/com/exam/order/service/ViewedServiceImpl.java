package com.exam.order.service;

import com.exam.order.model.User;
import com.exam.order.model.Viewed;
import com.exam.order.repository.RoleRepository;
import com.exam.order.repository.UserRepository;
import com.exam.order.repository.ViewedRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.HashSet;

@Service
public class ViewedServiceImpl implements ViewedService {
	@Autowired
	private ViewedRepository viewedRepository;

	@Override
	public void save(Viewed viewed) {
		viewedRepository.save(viewed);
	}
}
