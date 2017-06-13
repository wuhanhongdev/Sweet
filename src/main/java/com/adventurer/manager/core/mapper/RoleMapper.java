package com.adventurer.manager.core.mapper;

import com.adventurer.manager.core.model.Role;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;
import java.util.Map;

public interface RoleMapper extends Mapper<Role> {
    List<Role> selectRolesByUsername(Map<String,Object> map);
}
