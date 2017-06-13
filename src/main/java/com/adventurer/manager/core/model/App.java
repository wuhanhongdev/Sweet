package com.adventurer.manager.core.model;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity @Data
@Table(name = "test")
public class App {
    @Id //@GeneratedValue()
    private int id;
    private String name;
}
