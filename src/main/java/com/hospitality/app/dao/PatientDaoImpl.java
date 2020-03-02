package com.hospitality.app.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.hospitality.app.entity.Admin;
import com.hospitality.app.entity.Patient;

@Component
public class PatientDaoImpl implements PatientDao{

	@Autowired
	private SessionFactory sessionFactory;

	@Transactional
	public int save(Patient p) {
		// TODO Auto-generated method stub
		Session ses=sessionFactory.getCurrentSession();
		ses.save(p);
		
		return p.getPid();
	}
	
	@Transactional
	public List<Patient> patientList() {
		// TODO Auto-generated method stub
		Session ses=sessionFactory.getCurrentSession();
		List<Patient> plist=null;
		Query<Patient> query=ses.createQuery("from Patient",Patient.class);
		plist=query.getResultList();
		
		return plist;
	}
    
	@Transactional
	public Patient findById(int pid) {
		// TODO Auto-generated method stub
		Session ses=sessionFactory.getCurrentSession();
		Patient p=ses.get(Patient.class, pid);
		
		return p;
	}

	@Transactional
	public Patient findByEmail(String email) throws Exception {
		// TODO Auto-generated method stub
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalityapp","root","root");
		
		PreparedStatement ps=con.prepareStatement("select * from patient_db where email=?");
		ps.setString(1,email);
		ResultSet rs=ps.executeQuery();
		Patient a=null;
		
		while(rs.next()) {
			a=new Patient();
			
			a.setPid(rs.getInt("pid"));
			a.setName(rs.getString(2));
			a.setMobile(rs.getString(3));
			a.setEmail(rs.getString(4));
					
		}

		return a;
	}
    
	@Transactional
	public Patient deletePatient(int pid) {
		// TODO Auto-generated method stub
		Session ses=sessionFactory.getCurrentSession();
		
		Patient p=ses.get(Patient.class, pid);
		ses.delete(p);
		
		return p;
	}
	
}
