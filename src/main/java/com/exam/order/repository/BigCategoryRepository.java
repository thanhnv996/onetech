package com.exam.order.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.exam.order.model.BigCategory;

public interface BigCategoryRepository extends JpaRepository<BigCategory, Long>{
}
