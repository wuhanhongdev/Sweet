package com.adventurer.manager.core.api.impl;

import com.adventurer.manager.core.api.system.PrincipalApis;
import com.adventurer.manager.core.mapper.PrincipalMapper;
import com.adventurer.manager.core.model.Principal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PrincipalApisImpl implements PrincipalApis {

    @Autowired
    private PrincipalMapper principalMapper;

    public Principal findPrincipalByUsername(String username) {
        Principal queryPrincipal = new Principal();
        queryPrincipal.setLoginname(username);
        return principalMapper.selectOne(queryPrincipal);
    }
}
