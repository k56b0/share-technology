package com.aerial.toys.controller;

import com.aerial.toys.pojo.car;
import com.aerial.toys.service.CarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class carController {
    @Autowired
    private CarService carService;

    @RequestMapping(value = "/goods/car/{id}",method = RequestMethod.POST)
    public String addCar(@PathVariable("id") Integer id){
        carService.AddToCar(id);
        //这里不能直接返回 页面名称，要用重定向。
        return "redirect:/goods/show";
    }
    @RequestMapping(value = "/goods/car",method = RequestMethod.GET)
    public String showCar(Model model){
        List<car> cars = carService.showCar();
        model.addAttribute("car",cars);
        return "Car_list";
    }
    @RequestMapping(value = "/goods/car/{id}",method = RequestMethod.DELETE)
    public String deleteOneCar(@PathVariable("id") Integer id){
        carService.deleteOneCar(id);
        return "redirect:/goods/car";
    }
}
