package com.hospitality.app.service;

import java.util.List;

import com.hospitality.app.entity.Patient;

public interface PatientService {

	public int save(Patient p);
	public List<Patient> patientList();
	public Patient findById(int pid);
	public Patient findByEmail(String email) throws Exception;
	public Patient deletePatient(int pid);
}
