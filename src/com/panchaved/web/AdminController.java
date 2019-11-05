package com.panchaved.web;

import java.util.ArrayList;
import java.util.List;
import java.sql.Date;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import com.google.gson.*;
import com.google.gson.reflect.TypeToken;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.panchaved.enitity.Patient;
import com.panchaved.service.PatientService;
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

	@RequestMapping(value="/patient",method = RequestMethod.GET)
	public String patient(Model model) {
		showPatients(model, "1");
		
			return "table.jsp";
	}
	@RequestMapping(value="/ajaxPatient", method = RequestMethod.GET)
	public @ResponseBody JsonArray showPatients(Model model,@RequestParam("page") String p) {
		System.out.println("inside the showpatients()");
		int page = Integer.parseInt(p);
		Gson gson = new Gson();
		JsonElement element = gson.toJsonTree(pService.getAllRecords(page), new TypeToken<List<Patient>>() {}.getType());
		JsonArray json = element.getAsJsonArray();
		model.addAttribute("json",json);
		model.addAttribute("patient", pService.getAllRecords(page));
		return json;
	}

	@RequestMapping(value="/ajax", method = RequestMethod.GET)
	public String ajaxTest(Model model ) {
		return "ajaxTest.jsp";
		//		model.addAttribute("patient", pService.getAllRecords());
	}

	public String newPatient(Model model, HttpServletRequest req) {
		System.out.println("Get req");
		HttpSession s = req.getSession(false);
		model.addAttribute("user",s.getAttribute("user") );
		model.addAttribute("addpatient",new Patient());
		return "newpatient.jsp";
	}

	@RequestMapping(value="/patient/new", method = RequestMethod.POST)
	public String addPatient(Model model,@RequestParam("patientId") Integer id,@RequestParam("phoneNo") long contact,@RequestParam("remarks") String remarks,@RequestParam("patientName") String name,@RequestParam("dob") Date dob,@RequestParam("bloodgroup") String bloodgrp,@RequestParam("gender") String gender,@RequestParam("address") String address,@RequestParam("district") String district,@RequestParam("state") String state) {
		System.out.println("POST request");
		System.out.println(id+" "+bloodgrp+" "+name+" "+dob+" ");
		//if(pService.insertPatient(id, name, gender, contact, bloodgrp, dob, address, district, state, remarks))
			System.out.println("Done");

		return "success.jsp";
	}
}