package com.exam.order.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.exam.order.model.Const;

public interface ConstRepository extends JpaRepository<Const, Long> {
}
