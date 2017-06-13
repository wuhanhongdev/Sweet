package com.adventurer.manager.core.api.system;

import com.adventurer.manager.core.model.Principal;

/**
 * Created by jaydenwu on 11/06/2017.
 */
public interface PrincipalApis {
    Principal findPrincipalByUsername(String username);
}
