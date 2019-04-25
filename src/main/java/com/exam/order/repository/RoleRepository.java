package com.exam.order.repository;

import java.util.HashSet;

import org.springframework.data.jpa.repository.JpaRepository;

import com.exam.order.model.Role;
import com.exam.order.model.User;

public interface RoleRepository extends JpaRepository<Role, Long> {
	HashSet<Role> findByName(String name);
}
