package com.adventurer.manager.core.model;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Entity @Data
@Table(name = "t_manager_user")
public class Principal implements Serializable {
    @Id
    private String id;
    private String name;
    private String loginname;
    private String password;
    private String orgid;
    private String comment;
    private Integer status;

}
