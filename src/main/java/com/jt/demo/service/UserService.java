package com.jt.demo.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.jt.demo.pojo.User;

public interface UserService {

	List<User> findAll();

}
