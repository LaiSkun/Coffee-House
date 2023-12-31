package com.poly.edu.services;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class ParamService {
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	ServletContext context;
	
//	@param name tên tham số
//	@param defaultValue giá trị mặc định
//	@return giá trị tham số hoặc giá trị mặc định nếu không tồn tại
	
	public String getString(String name, String defaultValue) {
		String result = request.getParameter(name);
		return result != null ? result : defaultValue; 
	}
	
	public int getInt(String name, int defaultValue) {
		String result = request.getParameter(name);
		return result != null ? Integer.parseInt(result) : defaultValue; 
	}
	
	public double getDouble(String name, double defaultValue) {
		String result = request.getParameter(name);
		return result != null ? Double.parseDouble(result) : defaultValue; 
	}
	
	public boolean getBoolean(String name, boolean defaultValue) {
		String result = request.getParameter(name);
		return result != null ? Boolean.parseBoolean(result) : defaultValue; 
	}
	
	public Date getDate(String name, String pattern) {
		try {
			SimpleDateFormat formater = new SimpleDateFormat(pattern);
			return formater.parse(request.getParameter(name));
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public File save(MultipartFile file, String path ) throws Exception {
		File dir = new File(context.getRealPath(path));
		if(!dir.exists()) {
			dir.mkdirs();
		}
		try {
			File saveFile = new File(dir, file.getOriginalFilename());
			file.transferTo(saveFile);
			return saveFile;
		} catch (Exception e) {
			throw new Exception();
		}
	}
}
