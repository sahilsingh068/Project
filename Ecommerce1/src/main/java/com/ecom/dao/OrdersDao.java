package com.ecom.dao;

import org.springframework.data.repository.CrudRepository;

import com.ecom.entity.Orders;

public interface OrdersDao extends CrudRepository<Orders, Integer> {

}
