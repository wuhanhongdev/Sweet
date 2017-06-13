package com.adventurer.manager.core.auth;

import com.adventurer.manager.core.api.system.PermissionApis;
import com.adventurer.manager.core.api.system.PrincipalApis;
import com.adventurer.manager.core.api.system.RoleApis;
import com.adventurer.manager.core.model.Permission;
import com.adventurer.manager.core.model.Principal;
import com.adventurer.manager.core.model.Role;
import com.adventurer.manager.utils.ValidateHelper;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * 认证用户
 */
public class UserRealm extends AuthorizingRealm {

    @Autowired
    private PrincipalApis principalApis;
    @Autowired
    private RoleApis roleApis;
    @Autowired
    private PermissionApis permissionApis;

    /**
     * 用户授权
     * @param principalCollection
     * @return
     */
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        Principal principal = (Principal)principalCollection.getPrimaryPrincipal();
        List<Role> userRoles = roleApis.findRolesByUser(principal.getId());
        Set<String> roles = new HashSet<String>();
        Set<String> permissions = new HashSet<String>();
        for(Role role : userRoles){//取得角色对应权限
            roles.add(role.getId());
            List<Permission> p = permissionApis.findPeremissionByRole(role.getId());
            for(Permission permission : p){
                permissions.add(permission.getId());
            }
        }

        SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();

        authorizationInfo.addRoles(roles);
        authorizationInfo.addStringPermissions(permissions);

        return authorizationInfo;
    }

    /**
     * 用户认证
     * @param token
     * @return
     * @throws AuthenticationException
     */
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        UsernamePasswordToken upToken = (UsernamePasswordToken)token;
        String username = (String) upToken.getPrincipal();
        String password = String.valueOf(upToken.getPassword());
        //验证用户
        Principal principal = principalApis.findPrincipalByUsername(username);

        if(principal == null){
            throw new UnknownAccountException("没有找到该账号");
        }

        if(!principal.getPassword().equals(password)){
            throw new UnknownAccountException("密码不正确");
        }

        SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(username, password .toCharArray(),getName());

        return info;
    }
}
