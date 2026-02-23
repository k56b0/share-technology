package com.aerial.toys.service;


import com.aerial.toys.pojo.ModelToy;
import com.github.pagehelper.PageInfo;
import java.util.List;

/**
 * Date:2022/7/11
 * Author:ybc
 * Description:
 */
public interface ModelToyService {

    /**
     * 查询所有的商品信息
     * @return
     */
    List<ModelToy> getAllGoods();

    void delete(Integer id);

    void add(ModelToy m);

    void update(ModelToy m);

    ModelToy  getOne(Integer id);

    /**
     * 获取商品的分页信息
     * @param pageNum
     * @return
     */
    PageInfo<ModelToy> getGoodsPage(Integer pageNum);
}
