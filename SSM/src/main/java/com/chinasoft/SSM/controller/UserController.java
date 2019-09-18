package com.chinasoft.SSM.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chinasoft.SSM.service.IUserService;

@Controller  
@RequestMapping("/user")
public class UserController {
	 @Resource  
	    private IUserService userService;  
	      
	    @RequestMapping("/showUser")  
	    public String toIndex(HttpServletRequest request,Model model){  
	       List<Map<String,Object>>  list=userService.selectAll();
	       System.out.println(list);
	        return "showUser";  
	    }
 
}
