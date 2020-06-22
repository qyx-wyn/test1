package com.ssm.login.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ssm.login.pojo.Doctor;
import com.ssm.login.pojo.FeedBack;
import com.ssm.login.pojo.Hospital;
import com.ssm.login.pojo.Login;
import com.ssm.login.pojo.Prescription;
import com.ssm.login.pojo.Tcm;
import com.ssm.login.service.LoginService;
import com.ssm.login.util.StringUtil;

@Controller
@RequestMapping("/login")
//可以配置数据模型的名称和类型，两者取或关系
public class LoginController {
	
	@Autowired
	private LoginService loginService = null;
	
	protected Logger log = Logger.getLogger(getClass());
	
	@RequestMapping("/login")
	public ModelAndView login(Login login,HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
		ModelAndView mv = new ModelAndView();
		Login l = loginService.getLogin(login);
		res.setContentType("text/html;charset=gb2312");
	    PrintWriter out = res.getWriter();
		if(l!=null)
		{
			if(login.getPassword().equals(l.getPassword())){
				  System.out.println(l);
				  HttpSession session=req.getSession();
				  session.setAttribute("login", l);
				  mv.addObject("login", l); 
				  mv.setViewName("AdMain");
			}else{
				mv.setViewName("redirect:/login.jsp");
				req.setAttribute("psdErro", "密码错误！");
				
			}
			  
		}
		else{
			mv.setViewName("redirect:/login.jsp");
			req.setAttribute("nameErro", "用户名不存在！");
			
		}
			
		return mv;
	}
	
	@RequestMapping("/docByDyn")
	public ModelAndView getDocByDyn(String dynasty,HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
		ModelAndView mv = new ModelAndView();
		List<Doctor> doctors=loginService.getDocByDyn(dynasty);
		for (int i=0;i< doctors.size();i++) {
			doctors.get(i).setPrescriptions(loginService.getPre(doctors.get(i).getId()));
		}
		for (Doctor doctor : doctors) {
			System.out.println(doctor);
		}
		mv.addObject("doctors",doctors ); 
		mv.setViewName("doclist");
			
		return mv;
	}
	
	@RequestMapping("/getDoc")
	public ModelAndView getDoc(String doc,HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
		ModelAndView mv = new ModelAndView();
		List<Doctor> doctors=loginService.getDoc(doc);
		if(doctors!=null){
			for (int i=0;i< doctors.size();i++) {
				List<Prescription> pres=loginService.getPre(doctors.get(i).getId());
				if(pres!=null)
				doctors.get(i).setPrescriptions(pres);
			}
			for (Doctor doctor : doctors) {
				System.out.println(doctor);
			}
		}
		mv.addObject("doctors",doctors ); 
		mv.setViewName("doclist");
			
		return mv;
	}
	
	@RequestMapping("/hospitalList")
	public ModelAndView CityFind(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
		String city=req.getParameter("city");
		ModelAndView mv = new ModelAndView();
		List<Hospital> HospitalList=loginService.getCityHospital(city);
		for (Hospital h:HospitalList){
			System.out.println(h);
		}
		// 给数据模型添加一个角色对象
		mv.addObject("HospitalList", HospitalList);
		mv.setViewName("hospital1");
		return mv;	
	}
	
	@RequestMapping("/hospital")
	public ModelAndView HospitalFind(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
		String hos_name=req.getParameter("hos_name");
		ModelAndView mv = new ModelAndView();
		List<Hospital> Hospitals=loginService.getHospitals(hos_name);
		for (Hospital h:Hospitals){
			System.out.println(h);
		}
		// 给数据模型添加一个角色对象
		mv.addObject("HospitalList", Hospitals);
		mv.setViewName("hospital1");
		return mv;	
	}
	
	@RequestMapping("/showHospital")
	public ModelAndView showHospital(String hos_name, HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
		ModelAndView mv = new ModelAndView();
		
		Hospital hospital =loginService.showHospital(hos_name);
			System.err.println(hospital);
		
			// 给数据模型添加一个角色对象
			mv.addObject("Hospital", hospital);
			mv.setViewName("hospital2");
		return mv;	
	}
	
	@RequestMapping("/ZYList")
	public ModelAndView ZYFind(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
		String location=req.getParameter("location");
		ModelAndView mv = new ModelAndView();
		List<Tcm> ZYList=loginService.getCityZY(location);
		for (Tcm h:ZYList){
			System.out.println(h);
		}
		// 给数据模型添加一个角色对象
		mv.addObject("ZYList", ZYList);
		mv.setViewName("ZyList");
		return mv;	
	}
	
	@RequestMapping("/ZYs")
	public ModelAndView TcmFind(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
		String Tcm_name=req.getParameter("Tcm_name");
		ModelAndView mv = new ModelAndView();
		List<Tcm> Tcm=loginService.getZYs(Tcm_name);
		for (Tcm h:Tcm){
			System.out.println(h);
		}
		// 给数据模型添加一个角色对象
		mv.addObject("ZYList", Tcm);
		mv.setViewName("ZyList");
		return mv;	
	}
	
	
		@RequestMapping("/InsertAdv")
		public ModelAndView InsertAdv(String advice,HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
			ModelAndView mv = new ModelAndView();
			System.out.println(advice);
			int status=0;
			FeedBack f =new FeedBack();
			f.setAdvice(advice);
			f.setStatus(status);
			loginService.InsertAdv(f);
		    mv.setViewName("redirect:/index.jsp");
			return mv;
		}
		
		
		//添加中药材
		@RequestMapping(value="/addTcm",headers = "content-type=multipart/*",method = RequestMethod.POST)
		public ModelAndView addTcm(@RequestParam(value = "filename", required = false)MultipartFile filename,Model model,String zyName,String zyPlace,
				                   String zyTaste,String zyEffect,String zyPz,String nameYl,HttpServletRequest request )throws IOException{
			
			/*String filePath = "E:\\zyPictures";//保存图片的路径
			String originalFilename = filename.getOriginalFilename();
			File targetFile = new File(filePath,originalFilename); 
			filename.transferTo(targetFile);*/
			//System.out.println(zyName);
			Tcm tcm=new Tcm();
			String fileNameExt=filename.getOriginalFilename();
			if (StringUtil.isNotEmpty(fileNameExt)) {
				String ext=fileNameExt.substring(fileNameExt.lastIndexOf(".")+1);
				String path = request.getSession().getServletContext().getRealPath("pictures/zyPictures/");  
				String fileName = new Date().getTime()+"."+ext; 
				File targetFile = new File(path, fileName);
				tcm.setImg("pictures/zyPictures/"+fileName);
				if(!targetFile.exists()){  
		            targetFile.mkdirs();  
		        }
				filename.transferTo(targetFile);
			}
			
			tcm.setTcm_name(zyName);
			tcm.setLocation(zyPlace);
			tcm.setEfficacy(zyEffect);
			//System.out.println(filename);
			tcm.setOrigin(nameYl);
			tcm.setProcessing(zyPz);
			tcm.setTaste(zyTaste);
			ModelAndView mv = new ModelAndView();
			String message=null;
			Tcm tcmname=loginService.getNameTcm(zyName.toString());
			if(tcmname!=null){
				System.out.println(tcmname.getTaste());
				message="数据库已有该中药材信息！";
				mv.addObject("message",message);
				mv.setViewName("fail");
			}
			else{
				int i=loginService.insertTcm(tcm);
				if(i>0){
					System.out.println(i);
					mv.setViewName("redirect:/AdInput.jsp");
				}
				else{
					System.err.println("插入失败");
					message="插入失败！";
					mv.addObject("message",message);
					mv.setViewName("fail");
				}
			}
			return mv;
		}
		
		
		@RequestMapping("/addHos")
		public ModelAndView addHos(Hospital hospital,HttpServletRequest request,HttpServletResponse response) throws IOException{
			ModelAndView mv = new ModelAndView();
			String message=null;
			Hospital hos=loginService.getHospital(hospital.getHos_name());
			if(hos!=null){
				System.out.println(hos.getCity());
				message="数据库已有该中医院信息！";
				mv.addObject("message", message);
				mv.setViewName("fail");
			}
			else{
				int i=loginService.insertHospial(hospital);
				if(i>0){
					mv.setViewName("redirect:../AdInput.jsp");
					
				}
				else{
					message="录入失败！";
					mv.addObject("message", message);
					mv.setViewName("fail");
				}
			}
			return mv;
		}
		
		@RequestMapping("/ZY")
		public ModelAndView TcmFind(String Tcm_name,HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
	    //public void TcmFind(String Tcm_name,HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
			ModelAndView mv = new ModelAndView();
			Tcm tcm=loginService.getZY(Tcm_name);
			System.out.println(tcm);

			// 给数据模型添加一个角色对象
			mv.addObject("Tcm",tcm ); 
			mv.setViewName("UpdateZY");
//			mv.setViewName("redirect:/AdUpdate.jsp?Tcm_name="+Tcm_name1+"&location="+location+"&origin="+origin+"&taste="+taste+"&efficacy="+efficacy+"&processing="+processing);
			return mv;	
		}
		
		@RequestMapping("/UpdateTcm")
		public ModelAndView UpdateTcm(Tcm tcm,HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
			System.out.println(tcm);
			ModelAndView mv = new ModelAndView();
			loginService.UpdateTcm(tcm);
			mv.setViewName("redirect:/AdUpdate.jsp");	
			return mv;
		}
		
		@RequestMapping("/UpdateHospital")
		public ModelAndView UpdateHospital(Hospital hospital,HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
			System.out.println(hospital);
			ModelAndView mv = new ModelAndView();
			loginService.UpdateHospital(hospital);
			mv.setViewName("redirect:/AdUpdate.jsp");	
			return mv;
		}
		
		@RequestMapping("/hospital2")
		public ModelAndView HospitalFind2(String hos_name,HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
			ModelAndView mv = new ModelAndView();
			System.out.println(hos_name);
			Hospital hospital=loginService.getHospital(hos_name);
			System.out.println(hospital);
			mv.addObject("hospital",hospital ); 
			mv.setViewName("UpdateHos");
			return mv;	
		}
		
		@RequestMapping("/doc")
		public ModelAndView doc(int id,HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
			ModelAndView mv = new ModelAndView();
			System.out.println(id);
			Doctor doc=loginService.getDoctorById(id);
			doc.setPrescriptions(loginService.getPre(doc.getId()));
			System.out.println(doc);
			mv.addObject("doctor",doc ); 
			mv.setViewName("UpdateDoc");
			return mv;	
		}

		
		@RequestMapping("/out")
		public ModelAndView out(Login login,HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
			ModelAndView mv = new ModelAndView();
			
			HttpSession session=req.getSession();
			session.removeAttribute("login");
				
			mv.setViewName("redirect:/index.jsp");
				
			return mv;
		}
		
		
		
		@RequestMapping("/FindAllHos")
		@ResponseBody
		public List<Hospital> FindAllHos(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
			
			List<Hospital> HospitalList=loginService.FindAllHos();
			for (Hospital h:HospitalList){
				System.out.println(h);
			}
			// 给数据模型添加一个角色对象
			return HospitalList;
		}
		
		@RequestMapping("/FindAllZY")
		@ResponseBody
		public List<Tcm> FindAllZY(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
			List<Tcm> ZYList=loginService.FindAllZY();
			for (Tcm h:ZYList){
				System.out.println(h);
			}
			// 给数据模型添加一个角色对象
			return ZYList;	
		}
		
		@RequestMapping("/FindAllDoc")
		@ResponseBody
		public List<Doctor> FindAllDoc(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
			List<Doctor> DocList=loginService.FindAllDoc();
			for (Doctor h:DocList){
				System.out.println(h);
			}
			// 给数据模型添加一个角色对象
			return DocList;	
		}
		
		@RequestMapping("/UpdateDoc")
		public ModelAndView UpdateDoctor(Doctor doc,HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
			ModelAndView mv = new ModelAndView();
			System.out.println(doc);
			int i=loginService.updateDoc(doc);
			if(i>0){
				mv.setViewName("redirect:/AdUpdate.jsp");
			}else{
				String message="修改失败！";
				mv.addObject("message",message);
				mv.setViewName("fail");
			}
			
			return mv;
		}
		
		@RequestMapping("/updatePre")
		@ResponseBody
		public int updatePre(Prescription pre,HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
			System.out.println(pre);
			int i=loginService.updatePre(pre);
			return i;
		}
		
		@RequestMapping(value="/insertPre")
		@ResponseBody
		public int insertPre(Prescription pre,HttpServletRequest request)throws IOException{
//			ModelAndView mv=new ModelAndView();
//		    Prescription pre=new Prescription();
			Prescription pres=loginService.getPrescription(pre.getName());
		    System.out.println(pre.getName());
		    
		    int i=0;
		    if(pres!=null){
		    	i=-1;
		    }
		    else{
		    	i=loginService.insertPrescription(pre);
		    	if(i>0){
		    		System.out.println("插入成功！");
		    	}
		    	
		    }
			return i;
		}
		
		
		//录入名医方子
		@RequestMapping(value="/addPre")
		public ModelAndView recPre(String name,String major,String form,HttpServletRequest request)throws IOException{
			ModelAndView mv=new ModelAndView();
		    Prescription pre=new Prescription();
		    pre=loginService.getPrescription(name);
		    System.out.println(name);
		    Prescription pres=new Prescription();
		    int docid=Integer.parseInt(request.getParameter("docid"));
	    	pres.setDoc_id(docid);
	    	pres.setForm(form);
	    	pres.setMajor(major);
	    	pres.setName(name);
		    String message="";
		    if(pre!=null){
		    	message="数据库已有该名方";
		    	mv.addObject("message",message);
				mv.setViewName("fail");
		    }
		    else{
		    	int i=loginService.insertPrescription(pres);
		    	if(i>0){
		    		System.out.println("插入成功！");
		    		mv.setViewName("redirect:../AdInputPre.jsp?docid="+docid);
		    	}
		    	else{
		    		message="名方录入失败！";
			    	mv.addObject("message",message);
					mv.setViewName("fail");
		    	}
		    }
			return mv;
		}
		//添加中医
		@RequestMapping(value="/addDoctor")
		public ModelAndView addDoctor(Model model,String ysName,String ysPlace,String ysStory,String ysBook,HttpServletRequest request)throws IOException {
			System.out.println("进入");
			Doctor doctor=new Doctor();
			doctor.setDoc_name(ysName);
			doctor.setDynasty(ysPlace);
			doctor.setBook(ysBook);
			doctor.setStory(ysStory);
			String message="";
			ModelAndView mv = new ModelAndView();
			Doctor doctor1=loginService.getDoctor(ysName);
			if(doctor1!=null){
				System.out.println(doctor1.getDynasty());
				message="数据库中已有该名医信息！";
				mv.addObject("message",message);
				mv.setViewName("fail");
			}
			else{
				int i1=loginService.insertDoctor(doctor);
				if(i1>0){
					System.out.println("yes");
					System.out.println("插入成功！");
					//mv.setViewName("redirect:../AdInput.jsp");
					String tih=request.getParameter("u").toString();
					System.out.println(tih);
					if(tih.equals("yes")){
						Doctor doc=loginService.getDoctor(ysName);
						mv.setViewName("redirect:../AdInputPre.jsp?docid="+doc.getId());
					}
					else{
						mv.setViewName("redirect:../AdInput.jsp");
					}
				}
				else{
					message="插入名医信息失败！";
					mv.addObject("message",message);
					mv.setViewName("fail");
				}
			}
			return mv;
		}

		
		@RequestMapping(value="/updateSta")
		@ResponseBody
		public int updateSta(int id){
			ModelAndView mv = new ModelAndView();
			int s=loginService.updateSta(id);
			List<FeedBack> WdfeedBackList=loginService.getAllSta(1);
			List<FeedBack> YdfeedBackList=loginService.getAllSta(0);
			for(FeedBack f:WdfeedBackList){
				System.out.println(f);
			}
			for(FeedBack f1:YdfeedBackList){
				System.out.println(f1);
			}
			mv.addObject("WdfeedBackList",WdfeedBackList);
			mv.addObject("YdfeedBackList",YdfeedBackList);
			return s;
		}
		@RequestMapping(value="/deleteSta")
		public ModelAndView deleteSta(HttpServletRequest request){
			ModelAndView mv = new ModelAndView();
			int id=Integer.parseInt(request.getParameter("id"));
			loginService.deleteSta(id);
			List<FeedBack> WdfeedBackList=loginService.getAllSta(1);
			List<FeedBack> YdfeedBackList=loginService.getAllSta(0);
			for(FeedBack f:WdfeedBackList){
				System.out.println(f);
			}
			for(FeedBack f1:YdfeedBackList){
				System.out.println(f1);
			}
			mv.addObject("WdfeedBackList",WdfeedBackList);
			mv.addObject("YdfeedBackList",YdfeedBackList);
			mv.setViewName("Adadvice");
			return mv;
		}
		@RequestMapping(value="/FeedBackList")
		public ModelAndView FeedBackList(){
			System.err.println("1");
			ModelAndView mv = new ModelAndView();
			List<FeedBack> WdfeedBackList=loginService.getAllSta(1);
			List<FeedBack> YdfeedBackList=loginService.getAllSta(0);
			for(FeedBack f:WdfeedBackList){
				System.out.println(f);
			}
			for(FeedBack f1:YdfeedBackList){
				System.out.println(f1);
			}
			mv.addObject("WdfeedBackList",WdfeedBackList);
			mv.addObject("YdfeedBackList",YdfeedBackList);
			mv.setViewName("Adadvice");
			return mv;
		}
		
		@RequestMapping(value="/back")
		public ModelAndView back(){
			ModelAndView mv = new ModelAndView();
			mv.setViewName("AdMain");
			return mv;
		}
}
