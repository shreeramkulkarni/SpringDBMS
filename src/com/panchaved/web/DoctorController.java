package com.panchaved.web;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.panchaved.enitity.Doctor;
import com.panchaved.enitity.Patient;
import com.panchaved.service.DoctorService;
import com.panchaved.service.PatientService;
import com.panchaved.util.AppSession;

@Controller
@RequestMapping("/doctor")
public class DoctorController {

	@Autowired
	PatientService	pService;
	@Autowired
	DoctorService dService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String docDashboard() {
		return "doctorDashboard.jsp";
	}
	
	@RequestMapping(value="/patient/update", method = RequestMethod.GET)
	public @ResponseBody Patient showUpdatePatientForm(Model model,@RequestParam("patientId") Integer id)
	{
			Patient patient =  pService.getSelectedPatient(id);
//			model.addAttribute("patient",patient);
		return patient;
	}
	
	@RequestMapping(value="/update",method = RequestMethod.GET)
	public String updateDoctor(Model model, @RequestParam("doctorId")Integer id)
	{
	
		model.addAttribute("doc",new Doctor());
		model.addAttribute("doctor",dService.getSelectedDoctor(id));
		return "updateDoctor.jsp";
	}
	
	@RequestMapping(value="/update",method = RequestMethod.POST)
	public String updateDoctor(Model model,@ModelAttribute("doc") Doctor doc) {
			
			dService.updateDoc(doc);
			
		return "updateDoctor.jsp";
	}
}	
