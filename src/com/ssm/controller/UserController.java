package com.ssm.controller;

import java.util.ArrayList;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssm.pojo.User;
import com.ssm.service.UserServiceInterface;
import com.sun.istack.internal.logging.Logger;

@Controller
public class UserController {
	
	private final static Log Logger = LogFactory.getLog(UserController.class);
	
	@Autowired
	UserServiceInterface userService;
	
	@RequestMapping("/user/addUser")
	public String addUser(Model model){
		
		User user = new User();
		
		String[] carrers = {"计算机" , "土木" ,"教师" ,"管理" ,"电气" , "其他"};
		
		String[] hobbys = {"看电影" , "跑步" ,"游泳" ,"骑车" ,"旅行"};
		
		String[] address = {"无为" ,"庐江" ,"铜陵", "芜湖" ,"合肥" ,"马鞍山"};
		
		// 如果model中没有user属性，userAdd.jsp会抛出异常，因为表单标签无法找到modelAttribute属性指定的form backing object
		model.addAttribute("user", user);
		model.addAttribute("carrers", carrers);
		model.addAttribute("hobbys", hobbys);
		model.addAttribute("address", address);
		
		return "userAdd";
	}
	
	@RequestMapping("/user/save")
	public String userSave(@ModelAttribute("user") User user , Model model){
		
		if(userService.addUser(user)){
			Logger.info("添加成功！");
			return "redirect:/user/list";
		}
		
		Logger.info("添加失败！");
		
		String[] carrers = {"计算机" , "土木" ,"教师" ,"管理" ,"电气" , "其他"};	
		String[] hobbys = {"看电影" , "跑步" ,"游泳" ,"骑车" ,"旅行"};
		String[] address = {"无为" ,"庐江" ,"铜陵", "芜湖" ,"合肥" ,"马鞍山"};
		
		// 如果model中没有user属性，userAdd.jsp会抛出异常，因为表单标签无法找到modelAttribute属性指定的form backing object
		model.addAttribute("user", new User());
		model.addAttribute("carrers", carrers);
		model.addAttribute("hobbys", hobbys);
		model.addAttribute("address", address);
		model.addAttribute("errorMessage", "添加失败，重新添加！");
		
		return "userAdd";
		
	}
	
	@RequestMapping("/user/list")
	public String userList(Model model){
		ArrayList<User> users = userService.findAllUsers();
		model.addAttribute("users", users);
		return "userList";
	}
}
