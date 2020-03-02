package com.hospitality.app.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
//import java.util.Date;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.hospitality.app.dao.AdminDao;
import com.hospitality.app.entity.Admin;
import com.hospitality.app.service.AdminService;

@Controller
public class AdminController {

	public String savepath="C:/Users/Rakesh/project/HospitalityApp/src/main/webapp/resource/admin";
	@Autowired
	private AdminService adminService;
	@Autowired
	private AdminDao adm;
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	
//	@GetMapping("/")
//	public String getLoginRegist(Model model) {
//		
//		model.addAttribute("admindb", new Admin());
//		return "login";
//	}
	
	/*
	 * @GetMapping("/") public String getLoginRegist(Model model) {
	 * 
	 * model.addAttribute("admindb", new Admin()); return "home"; }
	 */
	
	@PostMapping("/save1")
	public String getRegist(/* @RequestParam("file")MultipartFile file,HttpServletRequest req, */Model model,Admin a,HttpServletRequest req) throws Exception {
		
		//Admin a1=new Admin();
		
//		a.setFname(req.getParameter("fname"));
//		a.setLname(req.getParameter("lname"));
//		a.setGender(req.getParameter("gender"));
//		a.setDob(Date.valueOf(req.getParameter("dob")));
//		a.setMobile(req.getParameter("mobile"));
//		a.setEmail(req.getParameter("email"));
//		a.setAddress(req.getParameter("address"));
//		a.setCity(req.getParameter("city"));
//		a.setState(req.getParameter("state"));
//		a.setEducation(req.getParameter("education"));
//		a.setProfession(req.getParameter("profession"));
//		a.setPassword(req.getParameter("password"));
//		
//		File dir=new File(savepath);
//		
//		a1.setFilename(file.getOriginalFilename());
//		a1.setSavepath(savepath);
//		
//		byte[] bytes=file.getBytes();
//		
//		if(!dir.exists()){
//			dir.mkdir();
//		}
//		File uoload=new File(dir.getAbsolutePath()+File.separator+file.getOriginalFilename());
//		BufferedOutputStream output=new BufferedOutputStream(new FileOutputStream(uoload));
//		
//		output.write(bytes);
//		output.close();
		//a.setDob(Date.valueOf(req.getParameter("dob")));
		a.setSavepath(savepath);
		adminService.save(a);
		
		return "login";
	}
	
	
	@PostMapping("/admin")
	public String getIndexPage(Model model,HttpServletRequest req) throws Exception {
		
		String email=req.getParameter("email");
		String pass=req.getParameter("password");
		
		Admin a=null;
		a=adminService.findByEmail(email);
		
		if(a!=null) {
			if(a.getEmail().equalsIgnoreCase(email)) {
				if(bCryptPasswordEncoder.matches(pass, a.getPassword())) {
					
					model.addAttribute("admin",a);
					HttpSession ses=req.getSession();
					ses.setAttribute("email", email);
					return "adminprofile";
				}else {
					model.addAttribute("pass","**Password is incorrect");
					return "login";
				}
			}else {
				model.addAttribute("email","**Email-Id is incorrect");
				return "login";
			}
		}
		else {
			model.addAttribute("msg","**Email-Id and password is incorrect");
			return "login";
		}
		
	}
	@GetMapping("/findOne")
	@ResponseBody
	public Admin findById(Integer aid) {
		
		return adminService.findById(aid);
	}
	@GetMapping("/findId")
	@ResponseBody
	public Admin findByPhoto(Integer aid) {
		
		Admin a=adminService.findById(aid);
		return a;
	}
	@PostMapping("/saveadmin")
	public String editAdmin(Model model,HttpServletRequest req,Admin a) throws Exception {
		HttpSession ses=req.getSession();
		String email=(String) ses.getAttribute("email");
		
		
		a=adm.findByEmail(email);
		a.setAid(Integer.parseInt(req.getParameter("aid")));
		a.setFname(req.getParameter("fname"));
		a.setLname(req.getParameter("lname"));
		a.setGender(req.getParameter("gender"));
		a.setDob(Date.valueOf(req.getParameter("dob")));
		a.setMobile(req.getParameter("mobile"));
		a.setEmail(req.getParameter("email"));
		a.setAddress(req.getParameter("address"));
		a.setCity(req.getParameter("city"));
		a.setState(req.getParameter("state"));
		a.setEducation(req.getParameter("education"));
		a.setProfession(req.getParameter("profession"));
		a.setPassword(req.getParameter("password"));

		adminService.update(a);
		
		Admin a1=adm.findByEmail(email);
		
		model.addAttribute("admin", a1);
		return "adminprofile";
	}
//	@GetMapping("/findPhoto")
//	@ResponseBody
//	public String findByPhoto(String filename) throws Exception {
//		
//		 String email=null;
//	     Admin a=adminService.findByPhoto(filename,email);
//	     
//	     String file=a.getFilename();
//	     System.out.println("FileName :"+file);
//	     
//		return file;
//	}
	
	@PostMapping("/savefile")
	public String editPhoto(@RequestParam("file")MultipartFile file,HttpServletRequest req,Model model) throws Exception {
		
		HttpSession ses=req.getSession();
		String email=(String) ses.getAttribute("email");
		Admin a=adm.findByEmail(email);
		
		File dir=new File(savepath);

		a.setFilename(file.getOriginalFilename());
		a.setSavepath(savepath);
		
        byte[] bytes=file.getBytes();
		
		if(!dir.exists()){
			dir.mkdir();
		}
		File uoload=new File(dir.getAbsolutePath()+File.separator+file.getOriginalFilename());
		BufferedOutputStream output=new BufferedOutputStream(new FileOutputStream(uoload));
		
		output.write(bytes);
		output.close();
		
		adm.updateAdmin(a);
		
		Admin alist=adminService.findByEmail(email);
		model.addAttribute("admin",alist);
		
		return "adminprofile";
	}
	
	
	
	
}
