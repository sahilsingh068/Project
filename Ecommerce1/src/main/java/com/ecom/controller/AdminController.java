package com.ecom.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ecom.dao.AdminDao;

import com.ecom.dao.SellerDao;
import com.ecom.entity.Admin;
import com.ecom.entity.Seller;


@Controller
public class AdminController {

	@Autowired
	SellerDao sellerdao;
	
	@Autowired
	AdminDao admindao;
	
	@RequestMapping("/")
	public String home()
	{
		return "Home.jsp"; 
	}
	
	
	// ADMIN //
	
	@RequestMapping("/admin")
	public String admin()
	{	
		return "admindisplay.jsp";
	}
	
	@RequestMapping("/addadmin")
	public String addAdmin()
	{	
		return "adminadd.jsp";
	}
	///
	@RequestMapping("/addingAdmin")
	public String loginAdmin(Admin a)
	{	
		admindao.save(a);
		return "loginadmin.jsp";
	}
	
	@RequestMapping("/adminlogin")
	public String adminlogin(){
		
		return "adminlogin.jsp";
	}
	@RequestMapping("/adminloggedin")
	public String addingAdmin(Admin a)
	{	
		admindao.save(a);
		return "admincontrol.jsp";
	}
	
	@RequestMapping("/adminaddseller")
	public String adminaddseller(Seller s)
	{	
		return "adminaddseller.jsp";
	}
	
	@RequestMapping("/adminaddingseller")
	public String adminaddingseller(Seller s)
	{	
		sellerdao.save(s);
		return "admincontrol.jsp";
	}
	
	@RequestMapping("/admindeleteseller")
	public String admindeleteseller(Seller s)
	{	
		return "admindeleteseller.jsp";
	}
	
	@RequestMapping("/admindeletingseller")
	public String admindeletingseller(int id)
	{	
		sellerdao.deleteById(id);
		return "admincontrol.jsp";
	}
	
	@RequestMapping("/viewseller")
	public String viewseller(Model m1)
	{	
		return "view.jsp";
	}
	
	////////////////////////////////////////////////////////
	
	
	
}
