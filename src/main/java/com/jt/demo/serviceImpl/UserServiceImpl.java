package com.jt.demo.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jt.demo.mapper.UserMapper;
import com.jt.demo.pojo.User;
import com.jt.demo.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserMapper userMapper;
	@Override
	public List<User> findAll() {
		return userMapper.selectList(null);
	}

}
