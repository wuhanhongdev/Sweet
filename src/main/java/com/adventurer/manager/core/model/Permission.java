package com.adventurer.manager.core.model;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 系统权限
 */
@Entity @Data
@Table(name = "t_permissions")
public class Permission {
    @Id
    private String id;
    private String pid;
    private String name;
    private Integer type;
    private String url;
    private Integer status;
    private String comment;
    private String memo;
}
