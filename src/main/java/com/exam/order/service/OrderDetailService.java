package com.exam.order.service;

import java.util.List;

import com.exam.order.model.OrderDetail;
import com.exam.order.model.OrderdetailId;

public interface OrderDetailService {
	OrderDetail save(OrderDetail orderDetail);

	List<OrderDetail> findAll();

	List<OrderDetail> findAllBestSellers();

	void deleteCustom(Integer _orderDetailId);
	
	Long deleteById(OrderdetailId id);
}
