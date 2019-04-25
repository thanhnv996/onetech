package com.exam.order.repository;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import com.exam.order.model.OrderDetail;
import com.exam.order.model.OrderdetailId;

public interface OrderDetailRepository extends JpaRepository<OrderDetail, Integer> {
	@Query(value = "SELECT *,COUNT(*) as COUNT FROM orderdetail GROUP BY `productId` ORDER BY COUNT DESC LIMIT 24", nativeQuery = true)
	ArrayList<OrderDetail> findAllBestSellers();

//	@Modifying
//	@Transactional
	@Query(value = "DELETE FROM orderdetail WHERE id = :_orderDetailId", nativeQuery = true)
	void deleteCustom(@Param("_orderDetailId") Integer _orderDetailId);
//	

	@Transactional
	Long deleteById(OrderdetailId id);
}
