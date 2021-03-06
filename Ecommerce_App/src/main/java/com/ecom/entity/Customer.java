package com.ecom.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Customer {
	@Id
	private int Cid;
	private String Cname;
	private String Caddress;
	private String Cemail;
	private int Cno;
	private String Cpassword;
	public int getCid() {
		return Cid;
	}
	public void setCid(int cid) {
		this.Cid = cid;
	}
	public String getCname() {
		return Cname;
	}
	public void setCname(String cname) {
		this.Cname = cname;
	}
	public String getCaddress() {
		return Caddress;
	}
	public void setCaddress(String caddress) {
		this.Caddress = caddress;
	}
	public String getCemail() {
		return Cemail;
	}
	public void setCemail(String cemail) {
		this.Cemail = cemail;
	}
	public int getCno() {
		return Cno;
	}
	public String getCpassword() {
		return Cpassword;
	}
	public void setCpassword(String cpassword) {
		this.Cpassword = cpassword;
	}
	public void setCno(int cno) {
		this.Cno = cno;
	}
	
	@Override
	public String toString() {
		return "Customer [Cid=" + Cid + ", Cname=" + Cname + ", Caddress=" + Caddress + ", Cemail=" + Cemail + ", Cno="
				+ Cno + ", Cpassword=" + Cpassword + "]";
	}
	public Customer() {
		// TODO Auto-generated constructor stub
	}
	public Customer(int cid, String cname, String caddress, String cemail, int cno, String cpassword) {
		super();
		this.Cid = cid;
		this.Cname = cname;
		this.Caddress = caddress;
		this.Cemail = cemail;
		this.Cno = cno;
		this.Cpassword = cpassword;
	}
	
	
	
	
}
