package com.aerial.toys.service.impl;

import com.aerial.toys.mapper.carMapper;
import com.aerial.toys.mapper.modelToyMapper;
import com.aerial.toys.pojo.ModelToy;
import com.aerial.toys.pojo.car;
import com.aerial.toys.service.CarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service
@Transactional
public class CarServiceImpl implements CarService {
    @Autowired
     private carMapper carMapper;
    @Autowired
    private modelToyMapper modelToyMapper;
    @Override
    public int AddToCar(Integer id) {
        ModelToy a = modelToyMapper.getA(id);
        return carMapper.addToCar(a) ;
    }

    @Override
    public List<car> showCar() {
        return carMapper.getAllCar();
    }

    @Override
    public int deleteOneCar(Integer id) {
        return carMapper.delete(id);
    }
}
