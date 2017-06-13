package com.adventurer.manager;

import com.adventurer.manager.core.api.AppApis;
import com.adventurer.manager.core.api.system.PermissionApis;
import com.adventurer.manager.core.model.App;
import com.adventurer.manager.core.model.BootstrapTree;
import com.adventurer.manager.core.model.Permission;
import com.adventurer.manager.utils.GenerateSequenceUtil;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.config.IniSecurityManagerFactory;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.Factory;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:/spring/spring-context.xml"})
public class AppTestCase {

    @Autowired
    private AppApis appApis;
    @Autowired
    private PermissionApis permissionApis;

    @Test
    public void testApp(){
        for(int i=0;i<50;i++){
            App test = new App();
            test.setName("username"+i);

            appApis.insertApp(test);
        }
    }

    @Test
    public void testQuery(){
        App app = new App();
        app.setId(31);
        app.setName("username30");

        List<App> apps = appApis.queryApps(app);
        for(App a : apps){
            System.out.println(a.getId()+"==="+a.getName());
        }
    }

    @Test
    public void testUUID(){
        String uuid = GenerateSequenceUtil.uuid();
        System.out.println(uuid);
    }

    @Test
    public void testHello(){
        //1、获取SecurityManager工厂，此处使用Ini配置文件初始化SecurityManager
        Factory<SecurityManager> factory =
                new IniSecurityManagerFactory("classpath:shiro.ini");
        //2、得到SecurityManager实例 并绑定给SecurityUtils
        org.apache.shiro.mgt.SecurityManager securityManager = factory.getInstance();
        SecurityUtils.setSecurityManager(securityManager);
        //3、得到Subject及创建用户名/密码身份验证Token（即用户身份/凭证）
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken("zhang", "123");

        try {
            //4、登录，即身份验证
            subject.login(token);
            System.out.println("login.....");
        } catch (AuthenticationException e) {
            //5、身份验证失败
        }

        Assert.assertEquals(true, subject.isAuthenticated()); //断言用户已经登录

        //6、退出
        subject.logout();
    }

    @Test
    public void testTree(){
        BootstrapTree tree = new BootstrapTree();
        tree.setText("系统菜单");
        tree.setIcon("fa fa-navicon");

        tree = getTree(tree,"root");

        System.out.println(tree.toString());
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
