package com.poly.edu.services;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.edu.dao.AccountDAO;
import com.poly.edu.entities.Account;

@Service
public class LoginService {

    @Autowired
    UserService userService;
    @Autowired
    AccountDAO repo;
    @Autowired
    SessionService session;
    @Autowired
    ParamService param;
    @Autowired
    CookieService cookie;

    public boolean login(Account localUser) {
        boolean remember = param.getBoolean("remember", false);
        Account userDb = repo.findByUsername(localUser.getUsername());
        if (checkLoginInfo(userDb, localUser)) {
            saveLoginInfo(userDb, remember);
            session.add("loggedInUser", userDb);
            return true;
        }
        removeLoginInfo();
        return false;
    }

    public Account getSaveUser() {
        String username = cookie.getValue("username");
        String password = cookie.getValue("password");
        return username == null ? null : new Account(username, password);
    }


    public void logout() {
        session.remove("loggedInUser");
    }

    private boolean checkLoginInfo(Account userDb, Account localUser) {
        return userDb != null && userDb.getPassword().equals(localUser.getPassword());
    }

    private void saveLoginInfo(Account user, boolean remember) {
        if (remember) {
            int hoursRemember = 10 * 24;
            cookie.add("username", user.getUsername(), hoursRemember);
            cookie.add("password", user.getPassword(), hoursRemember);
        } else {
            removeLoginInfo();
        }
    }

    private void removeLoginInfo() {
        cookie.remove("username");
        cookie.remove("password");
    }

}
