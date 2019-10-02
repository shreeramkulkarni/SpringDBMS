package com.panchaved.web;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
<<<<<<< HEAD
import org.springframework.web.bind.annotation.RequestBody;
=======
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
>>>>>>> d3c20dd0aaa4ee0b9219e474b2e09e354ac0946d
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.panchaved.enitity.Patient;
import com.panchaved.service.PatientService;
import com.panchaved.util.AddPatientQuery;
import com.panchaved.util.AppSession;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	PatientService pService;
	AppSession session;
	
	@RequestMapping(method = RequestMethod.GET)
	public String dashboard(HttpServletRequest req) {
		HttpSession session = req.getSession(false);
		//System.out.println("session var:"+session.getAttribute("user"));
		return "dashboard.jsp";
	}
	
	@RequestMapping(value="/patient")
	public String patient(Model model) {
		model.addAttribute("patient", pService.getAllRecords());
		return "table.jsp";
	}
	
	@RequestMapping(value="/patient/new", method = RequestMethod.GET)
<<<<<<< HEAD
	public @ResponseBody String newPatient(Model model) {
		
		
		model.addAttribute("patient", pService.getAllRecords());
		return pService;
=======
	public String newPatient(Model model, HttpServletRequest req) {
		System.out.println("sdfafasfasjygb");
		HttpSession s = req.getSession(false);
		model.addAttribute("user",s.getAttribute("user") );
		model.addAttribute("addpatient",new Patient());
		return "newpatient.jsp";
>>>>>>> d3c20dd0aaa4ee0b9219e474b2e09e354ac0946d
	}
	
	@RequestMapping(value="/patient/new", method = RequestMethod.POST)
	public String addPatient(Model model,HttpServletRequest req, @ModelAttribute("addpatient")Patient newPat, BindingResult result) {
		System.out.println("POST request");
		if(!result.hasErrors())
			System.out.println("No errors!!!!!!"); 
		System.out.println(newPat.getPatientName()) ;
		System.out.println(newPat.getBloodGroup());
		
		//if(AddPatientQuery.insertPatient(id, patname, gender, contact, bloodgrp, dob, address, district, state, remarks, casetaking))
//		model.addAttribute("patient", pService.getAllRecords());
		return "success.jsp";
	}
}