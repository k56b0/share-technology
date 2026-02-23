package com.aerial.toys.mapper;

import com.aerial.toys.pojo.ModelToy;
import com.aerial.toys.pojo.car;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface carMapper {

    /**
     * 查询到目前购物车所有信息
     * @return
     */
    List<car> getAllCar();

    /**
     * 添加商品到购物车
     * @param m
     * @return
     */
    int addToCar(ModelToy m);


    /**
     * 根据id号删除不想要的商品
     * @param id
     * @return
     */
    int delete(@Param("idi") Integer id);

    /**
     * 结算订单是清空购物车
     * @return
     */
    int deleteAll();


}
