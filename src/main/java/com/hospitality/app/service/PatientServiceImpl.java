package com.hospitality.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hospitality.app.dao.PatientDao;
import com.hospitality.app.entity.Patient;

@Service
public class PatientServiceImpl implements PatientService{

	@Autowired
	private PatientDao patientDao;

	public int save(Patient p) {
		// TODO Auto-generated method stub
		return patientDao.save(p);
	}

	public List<Patient> patientList() {
		// TODO Auto-generated method stub
		return patientDao.patientList();
	}

	public Patient findById(int pid) {
		// TODO Auto-generated method stub
		return patientDao.findById(pid);
	}

	public Patient findByEmail(String email) throws Exception {
		// TODO Auto-generated method stub
		return patientDao.findByEmail(email);
	}

	public Patient deletePatient(int pid) {
		// TODO Auto-generated method stub
		return patientDao.deletePatient(pid);
	}
	
}
