package com.panchaved.web;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.panchaved.service.PatientService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	PatientService pService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String dashboard(HttpServletRequest req) {
		HttpSession session = req.getSession(false);
		//System.out.println("session var:"+session.getAttribute("user"));
		return "dashboard.jsp";
	}
	@RequestMapping(value="/patient", method = RequestMethod.GET)
	public String patient(Model model) {
		model.addAttribute("patient", pService.getAllRecords());
		return "table.jsp";
	}
	
	@RequestMapping(value="/patient/new", method = RequestMethod.GET)
	public @ResponseBody String newPatient(Model model) {
		
		
		model.addAttribute("patient", pService.getAllRecords());
		return pService;
	}
	
}