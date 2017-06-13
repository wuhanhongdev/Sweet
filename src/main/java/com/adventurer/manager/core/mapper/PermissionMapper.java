package com.adventurer.manager.core.mapper;

import com.adventurer.manager.core.model.Permission;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;
import java.util.Map;

public interface PermissionMapper extends Mapper<Permission> {
    List<Permission> selectPermissionByRole(Map<String,Object> map);
}
