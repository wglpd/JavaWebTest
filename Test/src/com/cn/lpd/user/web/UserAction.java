package com.cn.lpd.user.web;


import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cn.lpd.user.entity.User;
import com.cn.lpd.user.service.UserService;

@Controller  
@RequestMapping("/user")  
public class UserAction {
	
	@Resource 
    private UserService userService;  
      
    @RequestMapping(value="/showUser")  
    public Object toIndex(HttpServletRequest request){
    	ModelAndView model = new ModelAndView();
        int userId = Integer.parseInt(request.getParameter("id"));  
        User user = userService.findUserById(userId);  
        model.addObject("user", user);
        model.setViewName("showUser");
        return model;  
    } 
    
    @RequestMapping(value = "/getUserData", method = RequestMethod.GET)
    public Object listData(HttpServletRequest request){
    	ModelAndView model = new ModelAndView();
    	List<User> list =  userService.findAllUser();
    	model.addObject("list", list);
    	model.addObject("total", list.size());
    	model.setViewName("user/user");
        return model;
    }
}
