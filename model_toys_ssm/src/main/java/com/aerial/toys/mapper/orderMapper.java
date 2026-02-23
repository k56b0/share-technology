package com.aerial.toys.mapper;

import com.aerial.toys.pojo.order;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface orderMapper {

    List<order> getAllOrder();

    int addOrder(@Param("idi") Integer id);
}
