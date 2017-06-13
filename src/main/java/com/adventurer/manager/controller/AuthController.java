package com.adventurer.manager.controller;

import com.adventurer.manager.core.api.system.PermissionApis;
import com.adventurer.manager.core.model.BootstrapTree;
import com.adventurer.manager.core.model.Permission;
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
     * 获取所有状态正常的菜单
     * {
         text: "Node 1",
         icon: "glyphicon glyphicon-stop",
         selectedIcon: "glyphicon glyphicon-stop",
         color: "#000000",
         backColor: "#FFFFFF",
         href: "#node-1",
         selectable: true,
         state: {
         checked: true,
         disabled: true,
         expanded: true,
         selected: true
         },
         tags: ['available'],
         nodes: [
         {},
         ]
     }
     * @return
     */
    @RequestMapping(value = "/loadAllPermissions",method = RequestMethod.POST)
    public @ResponseBody List<BootstrapTree> loadAllPermissions(){
        //得到所有权限
        BootstrapTree tree = new BootstrapTree();
        tree.setText("系统菜单");
        tree.setIcon("fa fa-navicon");
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
                t.setIcon("fa fa-navicon");
                nodes.add(t);//将自己加入到子集中
                getTree(t,permission.getId());//查找下一级
            }
            tree.setNodes(nodes);
        }
        return tree;
    }
}
