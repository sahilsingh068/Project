package com.ecom.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Admin {
	@Id
	private int Aid;
	private String Aname;
	private String Aaddress;
	private String Aemail;
	private int Ano;
	private String Apassword;
	public int getAid() {
		return Aid;
	}
	public void setAid(int aid) {
		this.Aid = aid;
	}
	public String getAname() {
		return Aname;
	}
	public void setAname(String aname) {
		this.Aname = aname;
	}
	public String getAaddress() {
		return Aaddress;
	}
	public void setAaddress(String aaddress) {
		this.Aaddress = aaddress;
	}
	public String getAemail() {
		return Aemail;
	}
	public void setAemail(String aemail) {
		this.Aemail = aemail;
	}
	public int getAno() {
		return Ano;
	}
	public String getApassword() {
		return Apassword;
	}
	public void setApassword(String apassword) {
		this.Apassword = apassword;
	}
	public void setAno(int ano) {
		this.Ano = ano;
	}
	
	
	public Admin() {
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Admin [Aid=" + Aid + ", Aname=" + Aname + ", Aaddress=" + Aaddress + ", Aemail=" + Aemail + ", Ano="
				+ Ano + ", Apassword=" + Apassword + "]";
	}
	public Admin(int aid, String aname, String aaddress, String aemail, int ano, String apassword) {
		super();
		this.Aid = aid;
		this.Aname = aname;
		this.Aaddress = aaddress;
		this.Aemail = aemail;
		this.Ano = ano;
		this.Apassword = apassword;
	}
	
	
	
	
}
