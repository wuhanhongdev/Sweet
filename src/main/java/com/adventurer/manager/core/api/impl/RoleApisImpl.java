package com.adventurer.manager.core.api.impl;

import com.adventurer.manager.core.api.system.RoleApis;
import com.adventurer.manager.core.mapper.RoleMapper;
import com.adventurer.manager.core.model.Role;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class RoleApisImpl implements RoleApis {
    @Autowired
    private RoleMapper roleMapper;

    public int saveRole(Role role) {
        return roleMapper.insert(role);
    }

    public List<Role> findRolesByUser(String userId) {
        Map<String,Object> map = new HashMap<String, Object>();
        map.put("userId",userId);
        return roleMapper.selectRolesByUsername(map);
    }

    public PageInfo<Role> findRolesByPage(PageInfo pageInfo) {
        PageHelper.startPage(pageInfo.getPageNum(),pageInfo.getPageSize());
        List<Role> roles = roleMapper.selectAll();
        PageInfo<Role> re = new PageInfo<Role>(roles);
        return re;
    }
}
