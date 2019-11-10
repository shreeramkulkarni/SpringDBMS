package com.panchaved.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.panchaved.enitity.Doctor;
import com.panchaved.enitity.Patient;
import com.panchaved.service.PatientService;
import com.panchaved.util.AppSession;

@Controller
@RequestMapping("/doctor")
public class DoctorController {

	@Autowired
	PatientService	pService;
	AppSession session;

	@RequestMapping(method = RequestMethod.GET)
	public String reviewPatient(Model model) {		
		//model.addAttribute("patient",pService.getSelectedPatient(id));
		model.addAttribute("pat",new Patient());
		//System.out.println("session var:"+session.getAttribute("user"));
		return "doctorDashboard.jsp";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String updatePatient(Model model,@ModelAttribute("pat") Patient pat) {		
		//System.out.println("session var:"+session.getAttribute("user"));
		//pService.updatePat(pat);
		return "doctorDashboard.jsp";
	}
	
}	
