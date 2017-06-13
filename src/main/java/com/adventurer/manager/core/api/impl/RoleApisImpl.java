package com.adventurer.manager.core.api.impl;

import com.adventurer.manager.core.api.system.RoleApis;
import com.adventurer.manager.core.mapper.RoleMapper;
import com.adventurer.manager.core.model.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class RoleApisImpl implements RoleApis {
    @Autowired
    private RoleMapper roleMapper;
    public List<Role> findRolesByUser(String userId) {
        Map<String,Object> map = new HashMap<String, Object>();
        map.put("userId",userId);
        return roleMapper.selectRolesByUsername(map);
    }
}
