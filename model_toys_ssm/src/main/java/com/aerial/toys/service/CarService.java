package com.aerial.toys.service;

import com.aerial.toys.pojo.ModelToy;
import com.aerial.toys.pojo.car;

import java.util.List;

public interface CarService {

    int AddToCar(Integer id);

    List<car> showCar();

    int deleteOneCar(Integer id);
}
