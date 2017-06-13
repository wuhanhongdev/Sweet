package com.adventurer.manager.controller;

import com.adventurer.manager.core.commons.DataResult;
import com.adventurer.manager.core.model.Permission;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
public class IndexController {

    @RequestMapping("/index")
    public String index(){
        return "home";
    }

    @RequestMapping("/login")
    public String login(){
        return "start";
    }

    @RequestMapping("/loadView")
    public String loadView(String viewPath){
        return viewPath;
    }

    @ResponseBody
    @RequestMapping("/permissionList")
    public DataResult permissionList(){
        DataResult result = new DataResult();
        result.setDraw(10);
        result.setRecordsFiltered(50);
        result.setRecordsTotal(50);
        List<Permission> permissions = new ArrayList<Permission>();
        for(int i=0;i<10;i++){
            Permission permission = new Permission();
            permission.setId(i+"");
            permission.setName("name"+i);
            permission.setPid(i+"");
            permission.setStatus(1);
            permission.setType(1);
            permission.setUrl("url"+i);
            permission.setComment("comment"+i);
            permission.setMemo("memo"+i);
            permissions.add(permission);
        }
        result.setData(permissions);
        return result;
    }
}
