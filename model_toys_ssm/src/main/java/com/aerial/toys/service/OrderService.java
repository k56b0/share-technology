package com.aerial.toys.service;

import com.aerial.toys.pojo.order;

import java.util.List;

public interface OrderService {

    int submitOrders(Integer userId);

    List<order> getAllOrder();
}
