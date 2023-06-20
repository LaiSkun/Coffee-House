package com.poly.edu.interceptor;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.HandlerInterceptor;

import com.poly.edu.entities.Account;
import com.poly.edu.services.SessionService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Service
public class AuthInterceptor implements HandlerInterceptor {

    @Autowired
    SessionService session;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String uri = request.getRequestURI();
        Account loggedInUser = (Account) session.get("loggedInUser").orElse(null);
        boolean isLoggedIn = loggedInUser != null;
        boolean isAdmin = isLoggedIn && loggedInUser.isAdmin();
        boolean isAdminPage = uri.startsWith("/admin");
        boolean isCheckoutPage = uri.contains("/checkout");

        if (isAdminPage) {
            if (!isLoggedIn) {
                session.add("security-uri", uri);
                response.sendRedirect("/login");
            } else if (!isAdmin && uri.startsWith("/admin/")) {
                response.sendRedirect("/login");
            }
        } else if (isCheckoutPage) {
            if (!isLoggedIn) {
                session.add("security-uri", uri);
                response.sendRedirect("/login");
            }
        }
        return isCheckoutPage && isLoggedIn || isAdminPage && isAdmin;
    }
}
