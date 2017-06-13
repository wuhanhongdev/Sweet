package com.adventurer.manager.core.api;

import com.adventurer.manager.core.model.App;

import java.util.List;

public interface AppApis {
    int insertApp(App app);

    List<App> queryApps(App app);
}
