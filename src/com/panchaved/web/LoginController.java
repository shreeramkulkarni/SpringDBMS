package com.panchaved.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.panchaved.util.AppSession;
import com.panchaved.util.LoginQuery;



@Controller
@RequestMapping("/")
public class LoginController {

	@RequestMapping(method=RequestMethod.GET)
	public String login(HttpServletRequest req) {
		if(!AppSession.isLoggedIn(req)) {
		System.out.println("login called!");
		return "login.jsp";
		}
		return "success.jsp";
	}
	@RequestMapping(method=RequestMethod.POST)
	public String login(HttpServletRequest req,@RequestParam("username") String username,@RequestParam("password")String password,@RequestParam("radiob")String radio , Model model) {
//		RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/views/html");
		
		if(LoginQuery.selectQueryLogin(username,password)) {
			
			HttpSession session = req.getSession();
			session.setAttribute("user", username);
			session.setAttribute("pass", password);
			model.addAttribute("username", username);
			model.addAttribute("person", radio);
			
		}else {
			model.addAttribute("username", username+" NOT FOUND");
			return "login.jsp";
		}
		
		return "redirect:/admin";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {

		HttpSession s = request.getSession(false);
		if(AppSession.isLoggedIn(request)) {
			s.invalidate();
			return "login.jsp";
		}
		return "success.jsp";
	}
	
	
	
	
}
