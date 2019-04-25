package com.exam.order.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.exam.order.model.Viewed;

public interface ViewedRepository extends JpaRepository<Viewed, Integer> {
}
