package com.adventurer.manager.core.api.impl;

import com.adventurer.manager.core.api.system.PermissionApis;
import com.adventurer.manager.core.commons.Constants;
import com.adventurer.manager.core.mapper.PermissionMapper;
import com.adventurer.manager.core.model.Permission;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class PermissionApiImpl implements PermissionApis {
    @Autowired
    private PermissionMapper permissionMapper;

    public List<Permission> findPeremissionByRole(String roleId) {
        Map<String,Object> map = new HashMap<String, Object>();
        map.put("roleId",roleId);
        return permissionMapper.selectPermissionByRole(map);
    }


    public List<Permission> queryPermissions(String pid) {
        Permission permission = new Permission();
        permission.setStatus(Constants.PERMISSION_STATE_ON);
        permission.setPid(pid);

        return permissionMapper.select(permission);
    }
}
