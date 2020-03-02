package com.hospitality.app.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;

import com.hospitality.app.entity.Admin;

@Controller
public class AdminDaoImpl implements AdminDao{

	@Autowired
	private SessionFactory sessionFactory;
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	@Transactional
	public int save(Admin a) {
		// TODO Auto-generated method stub
		Session ses=sessionFactory.getCurrentSession();
		a.setPassword(bCryptPasswordEncoder.encode(a.getPassword()));
		ses.save(a);
		
		return a.getAid();
	}
	@Transactional
	public List<Admin> alist() {
		// TODO Auto-generated method stub
		Session ses=sessionFactory.getCurrentSession();
		List<Admin> alist=null;
		
		Query<Admin> query=ses.createQuery("from Admin",Admin.class);
		
		alist=query.getResultList();
		
		return alist;
	}
	@Transactional
	public Admin findById(int id) {
		// TODO Auto-generated method stub
		Session ses=sessionFactory.getCurrentSession();
		
		Admin a=ses.get(Admin.class, id);
		
		return a;
	}

	@Transactional
	public Admin findByEmail(String email) throws Exception {
		// TODO Auto-generated method stub
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalityapp","root","root");
		
		PreparedStatement ps=con.prepareStatement("select * from admin_db where email=?");
		ps.setString(1,email);
		ResultSet rs=ps.executeQuery();
		Admin a=null;
		
		while(rs.next()) {
			a=new Admin();
			
			a.setAid(rs.getInt("aid"));
			a.setAddress(rs.getString(2));
			a.setCity(rs.getString(3));
			a.setDob(Date.valueOf(rs.getString(4)));
			//a.setDob(rs.getDate(4));
			a.setEducation(rs.getString(5));
			a.setEmail(rs.getString(6));
			a.setFilename(rs.getString(7));
			a.setFname(rs.getString(8));
			a.setGender(rs.getString(9));
			a.setLname(rs.getString(10));
			a.setMobile(rs.getString(11));
			a.setPassword(rs.getString(12));
			a.setProfession(rs.getString(13));
			a.setSavepath(rs.getString(14));
			a.setState(rs.getString(15));
		
		}
		return a;
	}
	@Transactional
	public int updateAdmin(Admin a) throws Exception{
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalityapp","root","root");
		
		
		PreparedStatement ps=con.prepareStatement("update admin_db set filename=? where aid=?");
		ps.setString(1,a.getFilename());
		ps.setInt(2,a.getAid());
		
		int status=ps.executeUpdate();
		
		
		return a.getAid();
	}
//	public Admin findByPhoto(String filename,String email) throws Exception {
//		// TODO Auto-generated method stub
//		AdminDaoImpl ad=new AdminDaoImpl();
//		Admin a1=ad.findByEmail(email);
//		Class.forName("com.mysql.jdbc.Driver");
//		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalityapp","root","root");
//		
//		PreparedStatement ps=con.prepareStatement("update admin_db set filename=? where aid=?");
//		ps.setString(1,a1.getFilename());
//		ps.setInt(2,a1.getAid());
//		
//		int status=ps.executeUpdate();
//
//		
//		return a1;
//	}
//	@Transactional
//	public Admin updateByFilename(String filename,String email) throws Exception {
//		// TODO Auto-generated method stub
//		AdminDaoImpl ad=new AdminDaoImpl();
//		Admin a=ad.findByEmail(email);
//		
//		a.setFilename(filename);
//		
//		return a;
//	}
	@Transactional
	public int update(Admin a) {
		// TODO Auto-generated method stub
		Session ses=sessionFactory.getCurrentSession();
		
		ses.update(a);
		
		return a.getAid();
	}

	
}
