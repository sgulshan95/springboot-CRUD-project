package com.app.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.app.entity.User;
import com.app.service.UserService;

@Controller
public class UserController {
	@Autowired
	public UserService service;
	
	@GetMapping("/")
	public String register(Model model ) {
		User user=new User();
		model.addAttribute("user",user);
		model.addAttribute("userList", service.getAllUser());
	//	System.out.println(service.getAllUser());

		return "hello";
			
	}
	
	@PostMapping("/registerUser")
	public String registerUser(@ModelAttribute("user") User user,Model model) {
		
			service.registerUser(user);
			System.out.println(user);
			model.addAttribute("userList", service.getAllUser());
			System.out.print(user.getFilepath());
			if(user.getId()==null) {
			model.addAttribute("messg", "Data Saved Successfully");
			}else {
				model.addAttribute("messg", "Data Updated Successfully");
			}
		return "hello";
	}
	
	@GetMapping("/getUsers")
	public String getUser(Model m)
	{
		m.addAttribute("userList", service.getAllUser());
		m.addAttribute("title", "Users");
		
		return "hello";
	}
	
	
	@PostMapping("/editUser/save")
	public String editregisterUser(@ModelAttribute("user") User user,Model model) {

	//	 service.editregisterUser(user);
		System.out.println(user);
		model.addAttribute("userList", service.getAllUser());
		service.registerUser(user);

		return "hello";
	}
	 
	@GetMapping("/deleteregisterUser/{id}") 
	  public String deleteregisterUser(@PathVariable(value="id") Long id,Model model) {
	  
	  service.deleteregisterUser(id);
	  model.addAttribute("userList", service.getAllUser());
	  model.addAttribute("messg", "Data Deleted Successfully");
	 
	 return "hello"; }
	 
	
	@GetMapping("/editUser/{id}")
    public String editAnime(@PathVariable Long id, Model model) {
        model.addAttribute("user", service.getUserById(id));
        System.out.println(service.getUserById(id));

        return "Users";
    }
	
	
	
	
	
}
