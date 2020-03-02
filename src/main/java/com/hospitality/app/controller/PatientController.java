package com.hospitality.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hospitality.app.entity.Admin;
import com.hospitality.app.entity.Patient;
import com.hospitality.app.service.PatientService;

@Controller
public class PatientController {

	@Autowired
	private PatientService patientService;
	
	@GetMapping("/")
	public String getPatient(Model model) {
		model.addAttribute("patient", new Patient());
		
		model.addAttribute("msg", "Patient Registration Form");
		return "patientregist";
	}
	
	@PostMapping("/save")
	public String getRegist(Model model,Patient p) {
		//Patient p=new Patient();
		patientService.save(p);
		
		List<Patient> slist=patientService.patientList();
		model.addAttribute("slist", slist);
		
		return "home";
	}
	
	
	
	@GetMapping("/findOneP")
	@ResponseBody
	public Patient findById(Integer pid) {
		
		return patientService.findById(pid);
	}
	
	@GetMapping("/result")
	public String getResult(Model model) {
		
		List<Patient> slist=patientService.patientList();
		model.addAttribute("slist", slist);
		return "home";
	}
	@GetMapping("/home")
	public String getResult1(Model model) {
		
		List<Patient> slist=patientService.patientList();
		model.addAttribute("slist", slist);
		return "home";
	}
	
	@GetMapping("/deleteP")
	public String deletePatient(Integer pid) {
		
		patientService.deletePatient(pid);
		
		return "redirect:/home";
	}
}
