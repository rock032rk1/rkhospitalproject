package com.hospitality.app.dao;

import java.util.List;

import com.hospitality.app.entity.Patient;

public interface PatientDao {

	public int save(Patient p);
	public List<Patient> patientList();
	public Patient findById(int pid);
	public Patient findByEmail(String email) throws Exception;
	public Patient deletePatient(int pid);
}
