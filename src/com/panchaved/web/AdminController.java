package com.panchaved.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@RequestMapping(method = RequestMethod.GET)
	public String dashboard(HttpServletRequest req) {
		HttpSession session = req.getSession(false);
		System.out.println("session var:"+session.getAttribute("user"));
		return "dashboard.jsp";
	}
}