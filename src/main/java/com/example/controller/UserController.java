package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.entity.LoginObject;
import com.example.entity.User;
import com.example.service.UserServiceImpl;

@Controller
public class UserController {
	@Autowired
	private UserServiceImpl serviceImpl;
	
	@GetMapping("/reg")
	public String showRegForm(Model model)
	{
		User user =new User();
		model.addAttribute("user", user);
		return "regForm";
	}
	@PostMapping("/save")
	public String saveData(@ModelAttribute("save") User user,Model model,RedirectAttributes attributes)
	{
		System.out.println(user);
		serviceImpl.savaUser(user);
		System.out.println("rama");
		attributes.addFlashAttribute("msg", "Registration is successfull..");
		return "redirect:/reg";
	}

	@GetMapping("/")
	public String loginForm( Model model)
	{
		LoginObject log=new LoginObject();
		model.addAttribute("log", log);
		return "login";
	}
	@PostMapping("login")
	public String login(@ModelAttribute("log") LoginObject loginObject,Model model)
	{
		System.out.println("ty"+loginObject.getName());
		System.out.println("rama");
		LoginObject log=new LoginObject();
		if(loginObject.getName()!=""&&loginObject.getPassword()!="")
		{
			boolean b=serviceImpl.verifyPassworAndName(loginObject);
			if(b)
			{
				model.addAttribute("name",loginObject.getName() );
				List<User> users=serviceImpl.getAllUser();
				model.addAttribute("users",users );
				return "succ";
			}else {
				model.addAttribute("log", log);
				model.addAttribute("msg","Login is fail..Please sing up" );
				return"login";
			}
		}else {
			model.addAttribute("log", log);
			model.addAttribute("msg","plese enter your name and password" );
			return"login";
		}
		
	
	}
}
