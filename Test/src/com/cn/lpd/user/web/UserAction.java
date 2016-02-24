package com.cn.lpd.user.web;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
    
    @RequestMapping(value = "/getUserData", method = RequestMethod.POST)
    public Object getlistData(HttpServletRequest request){
    	Map<String, Object> resultMap = new HashMap<String, Object>();
    	try{
    	List<User> list =  userService.findAllUser();
    	resultMap.put("list", list);
    	resultMap.put("total", list.size());
    	resultMap.put("result", 1);
    	}catch (Exception se) {
			resultMap.put("result", 0);
			resultMap.put("message", se.getMessage());
		}
        return resultMap;
    }
}
