package com.cn.lpd.user.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.lpd.user.entity.User;
import com.cn.lpd.user.mapper.UserMapper;

@Service("userService")
public class UserService {
	
	@Resource
	private UserMapper userMapper;
	
	public User findUserById(int Id){
		return userMapper.selectByPrimaryKey(Id);
	}
	
	public User findUserByUserName(String userName){
		return userMapper.selectByUserName(userName);
	}
	
	public List<User> findAllUser(){
		return userMapper.selectAllUser();
	}
}
