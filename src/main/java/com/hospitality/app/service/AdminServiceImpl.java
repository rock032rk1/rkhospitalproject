package com.hospitality.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hospitality.app.dao.AdminDao;
import com.hospitality.app.entity.Admin;
@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	private AdminDao adminDao;
	
	public int save(Admin a) {
		// TODO Auto-generated method stub
		return adminDao.save(a);
	}

	public List<Admin> alist() {
		// TODO Auto-generated method stub
		return adminDao.alist();
	}

	public Admin findById(int id) {
		// TODO Auto-generated method stub
		return adminDao.findById(id);
	}

	public Admin findByEmail(String email) throws Exception {
		// TODO Auto-generated method stub
		return adminDao.findByEmail(email);
	}

	public int updateAdmin(Admin a) throws Exception{
		// TODO Auto-generated method stub
		return adminDao.updateAdmin(a);
	}

	public int update(Admin a) {
		// TODO Auto-generated method stub
		return adminDao.update(a);
	}

//	public Admin findByPhoto(String filename,String email) throws Exception {
//		// TODO Auto-generated method stub
//		return adminDao.findByPhoto(filename,email);
//	}
//
//	public Admin updateByFilename(String filename, String email) throws Exception {
//		// TODO Auto-generated method stub
//		return adminDao.updateByFilename(filename, email);
//	}
	
      
}
