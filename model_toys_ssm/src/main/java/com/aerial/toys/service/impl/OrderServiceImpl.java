package com.aerial.toys.service.impl;

import com.aerial.toys.mapper.carMapper;
import com.aerial.toys.mapper.orderMapper;
import com.aerial.toys.pojo.car;
import com.aerial.toys.pojo.order;
import com.aerial.toys.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class OrderServiceImpl implements OrderService {

    @Autowired
    private orderMapper orderMapper;
    @Autowired
    private carMapper carMapper;
    @Override
    public int submitOrders(Integer userId) {
        //添加订单
         orderMapper.addOrder(userId);
         //清空购物车
        return  carMapper.deleteAll();
    }

    @Override
    public List<order> getAllOrder() {
        return orderMapper.getAllOrder();
    }
}
