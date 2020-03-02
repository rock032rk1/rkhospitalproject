package com.hospitality.app.dao;

import java.util.List;

import com.hospitality.app.entity.Admin;

public interface AdminDao {

	public int save(Admin a);
	public List<Admin> alist();
	public Admin findById(int id);
	public Admin findByEmail(String email) throws Exception;
	public int updateAdmin(Admin a) throws Exception;
	//public Admin findByPhoto(String filename,String email) throws Exception;
	//public Admin updateByFilename(String filename,String email) throws Exception;
	public int update(Admin a);
	
	
}
