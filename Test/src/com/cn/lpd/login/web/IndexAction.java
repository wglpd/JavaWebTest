package com.cn.lpd.login.web;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.cn.lpd.user.entity.User;

@Controller
public class IndexAction {
	
	private static final Logger logger = LoggerFactory.getLogger(IndexAction.class);
	
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public Object handleRequest(HttpServletRequest request) {
        ModelAndView model = new ModelAndView();
        try {
            User user = (User) request.getSession().getAttribute("LOGIN_USER");
            if (user == null) {
                model.setView(new RedirectView("login.do"));
            } else {
                model.addObject("user", user);             
                model.setViewName("/index");
            }
        } catch (Exception se) {
            model.addObject("exception", se.getMessage());
            model.setViewName("/error");
            logger.error(se.getMessage(), se);
        }
        return model;
    }
}
