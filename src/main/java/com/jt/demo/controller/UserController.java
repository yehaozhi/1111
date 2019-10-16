package com.jt.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jt.demo.pojo.User;
import com.jt.demo.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;

	
	@RequestMapping("/findAll")
	public String findAll(Model model) {
		List<User> userList = userService.findAll();
		//request域中
		model.addAttribute("userList",userList);
		return "userList";
		
	}
	//实现ajax页面的跳转
	@RequestMapping("/ajax")
	public String ajax() {
		return"ajax";
	}	
	@RequestMapping("/ajaxFindUser")
	@ResponseBody
	public List<User> ajaxFindUser(Integer id){
		System.out.println("获取客户参数"+id);
		return userService.findAll();	
	}
}
