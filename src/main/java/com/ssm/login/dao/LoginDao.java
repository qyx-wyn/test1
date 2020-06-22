package com.ssm.login.dao;


import java.util.List;

import org.springframework.stereotype.Repository;

import com.ssm.login.pojo.Doctor;
import com.ssm.login.pojo.FeedBack;
import com.ssm.login.pojo.Hospital;
import com.ssm.login.pojo.Login;
import com.ssm.login.pojo.Prescription;
import com.ssm.login.pojo.Tcm;


@Repository
public interface LoginDao {
	
	public Login getLogin(Login login);
	
	public List<Doctor> getDocByDyn(String dynasty);
	
	public List<Prescription> getPre(int doc_id);
	
	public List<Hospital> getCityHospital(String city);
		
	public List<Hospital> getHospitals(String hos_name);
	
	public Hospital showHospital(String hos_name);
	
	public List<Doctor> getDoc(String doc);
	
	public List<Tcm> getCityZY(String location);
	
	public List<Tcm> getZYs(String Tcm_name);
	
	
	public int insertDoctor(Doctor doctor);
	
	public int insertPrescription(Prescription prescription);
	
	public Doctor getDoctor(String doctorName);
	
	public int InsertAdv(FeedBack f);
	
	
	public int insertTcm(Tcm tcm);
	
	public Tcm getNameTcm(String Tcm_name);
	
	
	public int insertHospial(Hospital hospital);
	
	public Hospital getHospital(String hosname);
	
	
	public Tcm getZY(String Tcm_name);
	
	public int UpdateTcm(Tcm tcm);
	
	public int UpdateHospital(Hospital hospital);
	
	
	public int updateDoc(Doctor doc);
	
	public List<Tcm> FindAllZY();
	
	public List<Doctor> FindAllDoc();
	
	public List<Hospital> FindAllHos();
	
	public int getDoctorID(String doc_name);
	
	public int updatePre(Prescription pre);
	
	
	public Prescription getPrescription(String name);
	
	public Doctor getDoctorById(int id);
	
	
	public List<FeedBack> getAllSta(int status);
	
	public int updateSta(int id);
	
	public int deleteSta(int id);
}
