package com.zxy.RefSystem.controller;

import com.github.pagehelper.PageInfo;
import com.zxy.RefSystem.pojo.easy_text_exploration_summary;
import com.zxy.RefSystem.service.interf.easy_text_exploration_summaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

@Controller
public class easy_text_exploration_summaryController {
    @Autowired
    private easy_text_exploration_summaryService easyTextServ;

    @RequestMapping(value = "/easyTextHuntingMainView/page/{pageNum}", method = {RequestMethod.POST, RequestMethod.GET})
    public String showLinkMainView(Model model, @PathVariable("pageNum") Integer pageNum) {
        PageInfo<easy_text_exploration_summary> easyTexts = easyTextServ.getEasyTestList(pageNum);
        model.addAttribute("easyTexts", easyTexts);

        return "easyTextHuntingMainView";
    }

    @RequestMapping(value = {"/easyTextHuntingMainView/add"},
            method = {RequestMethod.POST, RequestMethod.GET})
    public String insertEasyTest(easy_text_exploration_summary obj) {
        System.out.println(obj);
        easyTextServ.insertEasyTest(obj);
        return "forward:/easyTextHuntingMainView/page/1";
    }
    @RequestMapping(value = {"/easyTextHuntingMainView/showDetail/{id}/{pageNum}"},
            method = {RequestMethod.POST, RequestMethod.GET})
    public String showDetail(HttpSession session, @PathVariable("id")  Integer id, @PathVariable("pageNum")  Integer pageNum) {
        easy_text_exploration_summary textById = easyTextServ.getTextById(id);
//        System.out.println(textById);
        session.setAttribute("textById", textById);
        return "forward:/easyTextHuntingMainView/page/"+pageNum;
    }


}
