package com.ecom.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ecom.dao.CustomerDao;
import com.ecom.dao.OrdersDao;
import com.ecom.dao.ProductDao;
import com.ecom.entity.Customer;
import com.ecom.entity.Orders;
import com.ecom.entity.Product;

@Controller
public class CustomerController {

	@Autowired
	CustomerDao customerdao;
	
	@Autowired
	OrdersDao ordersdao;
	
	@Autowired
	ProductDao productdao;
	
//  CUSTOMER    //

	@RequestMapping("/customer")
	public String customer()
	{	
		return "customerdisplay.jsp";
	}
	
	@RequestMapping("/customeradd")
	public String customeradd()
	{	
		return "customeradd.jsp";
	}
	
	@RequestMapping("/addingCustomer")
	public String addingCustomer(Customer c)
	{	
		customerdao.save(c);
		return "logincustomer.jsp";
	}
	
	@RequestMapping("/customerlogin")
	public String customerlogin(){	
		return "CustFrontPage.jsp";
	}
	
	@RequestMapping("/login")
	public String login(){	
		return "login.jsp";
	}
	
	@RequestMapping("/loggedin")
	public String loggedin(){	
		return "CustFrontPage.jsp";
	}
	
	@RequestMapping("/placeorder")
	public String placeorder(int id)
	{
		 Product p= productdao.findById(id).get();
		 Orders o = new Orders(p.getPid(), p.getPname(), p.getPprice(), p.getPcategory());
		 ordersdao.save(o);
		return "CustFrontPage.jsp";
	}
	
	
	@RequestMapping("/vieworders")
	public String vieworders()
	{
		return "vieworders.jsp";
	}
	
	
}
