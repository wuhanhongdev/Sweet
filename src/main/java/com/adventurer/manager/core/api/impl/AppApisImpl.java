package com.adventurer.manager.core.api.impl;

import com.adventurer.manager.core.api.AppApis;
import com.adventurer.manager.core.mapper.AppMapper;
import com.adventurer.manager.core.model.App;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AppApisImpl implements AppApis {

    @Autowired
    private AppMapper appMapper;

    public int insertApp(App app) {
        return appMapper.insert(app);
    }

    public List<App> queryApps(App app) {
        return appMapper.select(app);
    }
}
