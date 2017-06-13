package com.adventurer.manager.core.api.system;

import com.adventurer.manager.core.model.Permission;

import java.util.List;

/**
 * 权限服务
 */
public interface PermissionApis {
    /**
     * 查询角色权限
     * @param roleId 角色ID
     * @return
     */
    List<Permission> findPeremissionByRole(String roleId);

    /**
     * 查询所有状态正常（为1）的权限
     * @return
     */
    List<Permission> queryPermissions(String pid);
}
