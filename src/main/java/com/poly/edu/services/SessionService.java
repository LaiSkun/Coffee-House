package com.poly.edu.services;

import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SessionService {
	@Autowired
	HttpSession session;
	
//	Đọc giá trị của attribute trong session 
//	@param name tên attribute 
//	@return giá trị đọc được hoặc null nếu không tồn tại
	@SuppressWarnings("unchecked")
	public Optional get(String name) {
        return Optional.ofNullable(session.getAttribute(name));
    }

    /**
     * Thay đổi hoặc tạo mới attribute trong session
     *
     * @param name  tên attribute
     * @param value giá trị attribute
     */
    public void add(String name, Object value) {
        session.setAttribute(name, value);
    }

    /**
     * Xóa attribute trong session
     *
     * @param name tên attribute cần xóa
     */
    public void remove(String name) {
        session.removeAttribute(name);
    }
}
