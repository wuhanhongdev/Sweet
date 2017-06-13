package com.adventurer.manager.core.model;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Data @Entity
@Table(name = "t_manager_role")
public class Role {
    @Id
    private String id;
    private String name;
    private Integer status;
}
