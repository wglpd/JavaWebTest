package com.cn.lpd.login.web;

import java.util.HashMap;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.cn.lpd.common.MyException;
import com.cn.lpd.user.entity.User;
import com.cn.lpd.user.service.UserService;


@Controller  
public class LoginAction {
	
	@Resource 
    private UserService userService;  
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public Object loginPage(String error, HttpServletRequest request) {
		ModelAndView model = new ModelAndView();
		try {
			model.setViewName("login");
		} catch (Exception e) {
		}
		return model;
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	@ResponseBody
	public Object doLogin(HttpServletRequest request, String username, String password) {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		try {
			if (StringUtils.isEmpty(username)) {
				throw new MyException("用户名不能为空");
			}
			if (StringUtils.isEmpty(password)) {
				throw new MyException("密码不能为空");
			}
			User loginUser = userService.findUserByUserName(username);
			if (loginUser == null) {
				throw new MyException("用户不存在!");
			}

			if (!loginUser.getPassword().equalsIgnoreCase(password)) {
				throw new MyException("密码错误!");
			}
			request.getSession().setAttribute("LOGIN_USER", loginUser);
			resultMap.put("result", 1);
		} catch (Exception se) {
			resultMap.put("result", 0);
			resultMap.put("message", se.getMessage());
		}
		return resultMap;
	}
}
