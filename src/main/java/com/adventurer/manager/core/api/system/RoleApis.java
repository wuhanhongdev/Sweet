package com.adventurer.manager.core.api.system;

import com.adventurer.manager.core.model.Role;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface RoleApis {
    int saveRole(Role role);
    /**
     * 根据用户ID查询权限
     * @param userId
     * @return
     */
    List<Role> findRolesByUser(String userId);

    /**
     * 分页获取角色
     * @param pageInfo
     * @return
     */
    PageInfo<Role> findRolesByPage(PageInfo pageInfo);
}
