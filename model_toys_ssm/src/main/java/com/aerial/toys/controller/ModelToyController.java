package com.aerial.toys.controller;

import com.aerial.toys.pojo.ModelToy;
import com.aerial.toys.service.ModelToyService;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 *  * 查询所有的员工信息-->/employee-->get
 *  * 查询员工的分页信息-->/employee/page/1-->get
 *  * 根据id查询员工信息-->/employee/1-->get
 *  * 跳转到添加页面-->/to/add-->get
 *  * 添加员工信息-->/employee-->post
 *  * 修改员工信息-->/employee-->put
 *  * 删除员工信息-->/employee/1-->delete
 */
@Controller
public class ModelToyController {
    @Autowired
    private ModelToyService modelToyService;

    @RequestMapping(value = "goods/show",method = RequestMethod.GET)
    public String showAllGoods(Model model){
        List<ModelToy> allGoods = modelToyService.getAllGoods();
        model.addAttribute("Goods", allGoods);
        return "Toys_list";
    }

//    @RequestMapping(value = "/goods/{id}", method = RequestMethod.DELETE)
//    public String deleteEmployee(@PathVariable("id") Integer id){
//        modelToyService.delete(id);
//        return "redirect:/goods";
//    }
//    @RequestMapping(value = "/goods" ,method = RequestMethod.POST)
//    public String addGoods(ModelToy m){
//
//        modelToyService.add(m);
//        return "redirect:/goods";
//    }
//    @RequestMapping(value = "goods/add",method = RequestMethod.GET)
//    public String toAdd(){
//        return "good_add";
//    }
//    @RequestMapping(value = "goods/toChange/{id}",method = RequestMethod.GET)
//    public String toChange(@PathVariable("id") Integer id,Model model){
//        ModelToy mm = modelToyService.getOne(id);
//        model.addAttribute("g",mm);
//        return "update_good";
//    }

//    @RequestMapping(value = "/goods" ,method = RequestMethod.PUT)
//    public String updateForm(ModelToy m){
//        modelToyService.update(m);
//        return "redirect:/goods";
//    }


//    @RequestMapping(value = "/employee/page/{pageNum}", method = RequestMethod.GET)
//    public String getEmployeePage(@PathVariable("pageNum") Integer pageNum, Model model){
//        //获取员工的分页信息
//        PageInfo<ModelToy> page = modelToyService.getGoodsPage(pageNum);
//        //将分页数据共享到请求域中
//        model.addAttribute("page", page);
//        //跳转到employee_list.html
//        return "employee_list";
//    }
//
//    @RequestMapping(value = "/employee", method = RequestMethod.GET)
//    public String getAllEmployee(Model model){
//        //查询所有的员工信息
//        List<ModelToy> list = modelToyService.getAllGoods();
//        //将员工信息在请求域中共享
//        model.addAttribute("list", list);
//        //跳转到employee_list.html
//        return "employee_list";
//    }
}
