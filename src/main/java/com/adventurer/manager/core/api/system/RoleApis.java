package com.adventurer.manager.core.api.system;

import com.adventurer.manager.core.model.Role;

import java.util.List;

public interface RoleApis {

    /**
     * 根据用户ID查询权限
     * @param userId
     * @return
     */
    List<Role> findRolesByUser(String userId);
}
