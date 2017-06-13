package com.adventurer.manager.controller;

import com.adventurer.manager.core.api.system.PermissionApis;
import com.adventurer.manager.core.model.BootstrapTree;
import com.adventurer.manager.core.model.Permission;
import com.adventurer.manager.core.model.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

/**
 * 权限控制器
 */
@Controller
@RequestMapping("/auth")
public class AuthController {
    @Autowired
    private PermissionApis permissionApis;

    /**
     * 添加权限
     * @return
     */
    @RequestMapping(value = "/addPermission",method = RequestMethod.POST)
    public @ResponseBody Result addPermission(){
        return null;
    }


    /**
     * 获取所有状态正常的菜单
     * @return
     */
    @RequestMapping(value = "/loadAllPermissions",method = RequestMethod.POST)
    public @ResponseBody List<BootstrapTree> loadAllPermissions(){
        //得到所有权限
        BootstrapTree tree = new BootstrapTree();
        tree.setText("系统菜单");
        tree.setIcon("fa fa-navicon");
        tree.setId("root");
        List<BootstrapTree> trees = new ArrayList<BootstrapTree>();
        BootstrapTree newTree = getTree(tree,"root");
        trees.add(newTree);
        return trees;
    }

    public BootstrapTree getTree(BootstrapTree tree,String pid){
        List<Permission> permissions = permissionApis.queryPermissions(pid);
        if(permissions != null){
            List<BootstrapTree> nodes = new ArrayList<BootstrapTree>();
            for(Permission permission : permissions){
                BootstrapTree t = new BootstrapTree();
                t.setText(permission.getName());
                t.setId(permission.getId());
                t.setIcon("fa fa-navicon");
                t.setComment(permission.getComment());
                t.setMemo(permission.getMemo());
                t.setUrl(permission.getUrl());
                t.setType(t.getType());
                t.setStatus(permission.getStatus());
                nodes.add(t);//将自己加入到子集中
                getTree(t,permission.getId());//查找下一级
            }
            tree.setNodes(nodes);
        }
        return tree;
    }
}
