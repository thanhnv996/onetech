package com.exam.order.service;

import com.exam.order.model.Role;
import com.exam.order.model.User;
import com.exam.order.repository.RoleRepository;
import com.exam.order.repository.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.HashSet;

@Service
public class RoleServiceImpl implements RoleService {
	@Autowired
	private RoleRepository roleRepository;

	@Override
	public void save(Role role) {
	}
}
