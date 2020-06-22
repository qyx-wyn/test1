package com.ssm.login.service.impl;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.ssm.login.dao.LoginDao;
import com.ssm.login.pojo.Doctor;
import com.ssm.login.pojo.FeedBack;
import com.ssm.login.pojo.Hospital;
import com.ssm.login.pojo.Login;
import com.ssm.login.pojo.Prescription;
import com.ssm.login.pojo.Tcm;
import com.ssm.login.service.LoginService;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	private LoginDao loginDao = null;

	@Override
	@Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.REQUIRED)
	public Login getLogin(Login login) {
		return loginDao.getLogin(login);
	}
	
	@Override
	@Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.REQUIRED)
	public List<Doctor> getDocByDyn(String dynasty) {
		return loginDao.getDocByDyn(dynasty);
	}
	
	@Override
	@Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.REQUIRED)
	public List<Doctor> getDoc(String doc) {
		return loginDao.getDoc(doc);
	}

	@Override
	@Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.REQUIRED)
	public List<Prescription> getPre(int doc_id) {
		return loginDao.getPre(doc_id);
	}
	
	@Override
	@Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.REQUIRED)
	public List<Hospital> getCityHospital(String city) {
		// TODO Auto-generated method stub
		return loginDao.getCityHospital(city);
	}

	@Override
	@Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.REQUIRED)
	public List<Hospital> getHospitals(String hos_name) {
		// TODO Auto-generated method stub
		return loginDao.getHospitals(hos_name);
	}
	
	@Override
	@Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.REQUIRED)
	public Hospital showHospital(String hos_name) {
		// TODO Auto-generated method stub
		return loginDao.showHospital(hos_name);
	}
	
	@Override
	@Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.REQUIRED)
	public List<Tcm> getCityZY(String location) {
		// TODO Auto-generated method stub
		return loginDao.getCityZY(location);
	}

	@Override
	@Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.REQUIRED)
	public List<Tcm> getZYs(String Tcm_name) {
		// TODO Auto-generated method stub
		return loginDao.getZYs(Tcm_name);
	}
	
	
	@Override
	@Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.REQUIRED)
	public int insertDoctor(Doctor doctor) {
		// TODO Auto-generated method stub
		return loginDao.insertDoctor(doctor);
	}

	@Override
	@Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.REQUIRED)
	public Doctor getDoctor(String doctorName) {
		// TODO Auto-generated method stub
		return loginDao.getDoctor(doctorName);
	}

	@Override
	@Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.REQUIRED)
	public int insertPrescription(Prescription prescription) {
		// TODO Auto-generated method stub
		return loginDao.insertPrescription(prescription);
	}
	
	@Override
	@Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.REQUIRED)
	public int InsertAdv(FeedBack f) {
		// TODO Auto-generated method stub
		return loginDao.InsertAdv(f);
	}
	
	
	@Override
	@Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.REQUIRED)
	public int insertTcm(Tcm tcm) {
		// TODO Auto-generated method stub
		return loginDao.insertTcm(tcm);
	}

	@Override
	public Tcm getNameTcm(String Tcm_name) {
		// TODO Auto-generated method stub
		return loginDao.getNameTcm(Tcm_name);
	}
	
	
	@Override
	@Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.REQUIRED)
	public int insertHospial(Hospital hospital) {
		// TODO Auto-generated method stub
		return loginDao.insertHospial(hospital);
	}

	@Override
	public Hospital getHospital(String hosname) {
		// TODO Auto-generated method stub
		return loginDao.getHospital(hosname);
	}
	
	
	
		@Override
		@Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.REQUIRED)
		public int UpdateTcm(Tcm tcm) {
			// TODO Auto-generated method stub
			return loginDao.UpdateTcm(tcm);
		}

		@Override
		@Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.REQUIRED)
		public int UpdateHospital(Hospital hospital) {
			// TODO Auto-generated method stub
			return loginDao.UpdateHospital(hospital);
		}

		@Override
		@Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.REQUIRED)
		public Tcm getZY(String Tcm_name) {
			// TODO Auto-generated method stub
			return loginDao.getZY(Tcm_name);
		}

		
		@Override
		public int updateDoc(Doctor doc) {
			// TODO Auto-generated method stub
			return loginDao.updateDoc(doc);
		}

		@Override
		@Transactional(isolation = Isolation.READ_COMMITTED, propagation = Propagation.REQUIRED)
		public List<Tcm> FindAllZY() {
			// TODO Auto-generated method stub
			return loginDao.FindAllZY();
		}

		@Override
		public List<Hospital> FindAllHos() {
			// TODO Auto-generated method stub
			return loginDao.FindAllHos();
		}

		@Override
		public int getDoctorID(String doc_name) {
			// TODO Auto-generated method stub
			return loginDao.getDoctorID(doc_name);
		}

		@Override
		public List<Doctor> FindAllDoc() {
			// TODO Auto-generated method stub
			return loginDao.FindAllDoc();
		}

		@Override
		public int updatePre(Prescription pre) {
			// TODO Auto-generated method stub
			return loginDao.updatePre(pre);
		}

		@Override
		public Prescription getPrescription(String name) {
			// TODO Auto-generated method stub
			return loginDao.getPrescription(name);
		}

		@Override
		public Doctor getDoctorById(int id) {
			// TODO Auto-generated method stub
			return loginDao.getDoctorById(id);
		}

		@Override
		public List<FeedBack> getAllSta(int status) {
			// TODO Auto-generated method stub
			return loginDao.getAllSta(status);
		}

		@Override
		public int updateSta(int id) {
			// TODO Auto-generated method stub
			return loginDao.updateSta(id);
		}

		@Override
		public int deleteSta(int id) {
			// TODO Auto-generated method stub
			return loginDao.deleteSta(id);
		}

}
