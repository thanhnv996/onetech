package com.exam.order.service;

import com.exam.order.model.OrderDetail;
import com.exam.order.model.OrderdetailId;
import com.exam.order.repository.OrderDetailRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderDetailServiceImpl implements OrderDetailService {
	@Autowired
	private OrderDetailRepository orderDetailRepository;

	@Override
	public OrderDetail save(OrderDetail orderDetail) {
		return orderDetailRepository.save(orderDetail);
	}

	@Override
	public List<OrderDetail> findAll() {
		return orderDetailRepository.findAll();
	}

	@Override
	public List<OrderDetail> findAllBestSellers() {
		return orderDetailRepository.findAllBestSellers();
	}

	@Override
	public void deleteCustom(Integer _orderDetailId) {
		System.out.println(" _orderDetailId ::::::::::::::::::::::::::::::::::::::" + _orderDetailId);
		orderDetailRepository.deleteCustom(_orderDetailId);
	}

	@Override
	public Long deleteById(OrderdetailId id) {
		return orderDetailRepository.deleteById(id);
	}

}
