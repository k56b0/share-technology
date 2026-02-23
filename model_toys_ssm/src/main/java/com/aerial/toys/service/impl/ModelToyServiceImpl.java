package com.aerial.toys.service.impl;

import com.aerial.toys.mapper.modelToyMapper;
import com.aerial.toys.pojo.ModelToy;
import com.aerial.toys.service.ModelToyService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class ModelToyServiceImpl implements ModelToyService {
    @Autowired
    private com.aerial.toys.mapper.modelToyMapper modelToyMapper;


    @Override
    public List<ModelToy> getAllGoods() {
        List<ModelToy> allModelToy = modelToyMapper.getAllModelToy();
        return allModelToy;
    }

    @Override
    public void delete(Integer id) {
        modelToyMapper.delete(id);
    }

    @Override
    public void add(ModelToy m) {
        modelToyMapper.add(m);
    }
    public void update(ModelToy m){
        modelToyMapper.updateGood(m);
    }

    @Override
    public ModelToy getOne(Integer id) {
        return modelToyMapper.getA(id);
    }

    @Override
    public PageInfo<ModelToy> getGoodsPage(Integer pageNum) {
        //开启分页功能
        PageHelper.startPage(pageNum, 5);
        //查询所有的员工信息
        List<ModelToy> list = modelToyMapper.getAllModelToy();
        //获取分页相关数据
        PageInfo<ModelToy> page = new PageInfo<>(list, 3);
        return page;
    }
}
