package com.aerial.toys.controller;

import com.aerial.toys.pojo.order;
import com.aerial.toys.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;


@Controller
public class orderController {

    @Autowired
    private OrderService orderService;

    @RequestMapping(value = "/goods/order/{id}",method = RequestMethod.POST)
    public String submitOrder(@PathVariable("id") Integer id){
        orderService.submitOrders(id);
        return "index";
//        return "redirect:/check";
    }

    @RequestMapping(value = "/goods/order" ,method = RequestMethod.GET)
    public String showOrder(Model model){
        List<order> allOrder = orderService.getAllOrder();
        model.addAttribute("allOrder",allOrder);
        return "Order_list";
    }
}
