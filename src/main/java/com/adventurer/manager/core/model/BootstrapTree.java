package com.adventurer.manager.core.model;

import lombok.Data;

import java.util.List;

@Data
public class BootstrapTree {
    private String text;
    private String icon;
    private String id;
    private String url;
    private Integer type;
    private Integer status;
    private String comment;
    private String memo;
    private List<BootstrapTree> nodes;

    @Override
    public String toString() {
        return "BootstrapTree{" +
                "text='" + text + '\'' +
                ", icon='" + icon + '\'' +
                ", nodes=" + nodes +
                '}';
    }
}
