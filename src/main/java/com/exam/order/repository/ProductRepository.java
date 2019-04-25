package com.exam.order.repository;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.exam.order.model.Product;

public interface ProductRepository extends JpaRepository<Product, Integer> {
	@Query(value = "SELECT * FROM product ORDER BY MSRP DESC LIMIT 24", nativeQuery = true)
	ArrayList<Product> findAllBestDiscounts();

	@Query(value = "SELECT * FROM product WHERE rate <> 0 ORDER BY rate DESC LIMIT 24", nativeQuery = true)
	ArrayList<Product> findAllBestRates();
	
	@Query(value = "SELECT * FROM product WHERE MATCH(productName) AGAINST(:keyword)", nativeQuery = true)
	ArrayList<Product> findAllByKeyword(@Param("keyword") String keyword);
	
	@Query(value = "SELECT * FROM product INNER JOIN viewed ON viewed.user_id = :userId AND product.id = viewed.product_id LIMIT 10", nativeQuery = true)
	ArrayList<Product> findAllViewed(@Param("userId") Integer userId);
}
