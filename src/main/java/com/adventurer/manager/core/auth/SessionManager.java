package com.adventurer.manager.core.auth;

import org.apache.shiro.session.mgt.SessionKey;
import org.apache.shiro.web.session.mgt.DefaultWebSessionManager;

import java.io.Serializable;

public class SessionManager extends DefaultWebSessionManager {
    public SessionManager() {
        super();
    }

    @Override
    public Serializable getSessionId(SessionKey key) {
        return super.getSessionId(key);
    }
}
