package com.ecom.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ecom.dao.SellerDao;
import com.ecom.entity.Seller;

@Controller
public class SellerController {

	@Autowired
	SellerDao sellerdao;
	
	// SELLER //
	
		@RequestMapping("/seller")
		public String seller()
		{	
			return "sellersignup.jsp";
		}
		
		@RequestMapping("/sellersignin")
		public String sellersignin(Seller s){
			
			sellerdao.save(s);
			return "sellerlogin.jsp";
		}
		
		@RequestMapping("/loginseller")
		public String loginseller(){
			
			return "loginseller.jsp";
		}
		
		@RequestMapping("/sellerloggedin")
		public String sellerloggedin(){
			
			return "productdisplay.jsp";
		}
		
		// ADD SELLER //
		@RequestMapping("/addseller")
		public String addSeller()
		{	
			return "selleradd.jsp";
		}
		
		@RequestMapping("/addingSeller")
		public String addingSeller(Seller s)
		{	
			sellerdao.save(s);
			return "productdisplay.jsp"; //
		}
		
		// UPDATE SELLER //
		@RequestMapping("/updateseller")
		public String updateSeller()
		{	
			return "sellerupdate.jsp";
		}
		
		@RequestMapping("/updatingSeller")
		public String updatingSeller(Seller s)
		{	
			sellerdao.save(s);
			return "sellerdisplay.jsp";
		}
		
		// DELETE SELLER //
		@RequestMapping("/deleteseller")
		public String deleteSeller()
		{	
			return "sellerdelete.jsp";
		}
		
		@RequestMapping("/deletingSeller")
		public String deletingSeller(int id)
		{	
			sellerdao.deleteById(id);
			return "sellerdisplay.jsp";
		}
	
}
