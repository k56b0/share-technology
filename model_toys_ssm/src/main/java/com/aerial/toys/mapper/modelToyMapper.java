package com.aerial.toys.mapper;

import com.aerial.toys.pojo.ModelToy;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface modelToyMapper {

    /**
     * 查询所有的员工信息
     * @return
     */
    List<ModelToy> getAllModelToy();

    /**
     * 根据删除商品
     * @param id
     * @return
     */
    int delete(@Param("idi") Integer id);

    /**
     * 增加商品
     * @param m
     * @return
     */
    int add(ModelToy m);

    /**
     * 更新商品
     * @param m
     * @return
     */
    int updateGood(ModelToy m);

    /**
     * 根据id 获得单个商品
     * @param id
     * @return
     */
    ModelToy getA(@Param("id") Integer id);
    /**
     * 减少商品库存
     * UPDATE `ModelToy` SET inventory=inventory-1 WHERE ModelToy_id =4;
     */
    int updateInventory(@Param("id") Integer id);

}
