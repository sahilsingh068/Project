package com.ecom.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Orders {
	
	@Id
	private int Oid;
	private String Oname;
	private int Oprice;
	private String Ocategory;
	public int getOid() {
		return Oid;
	}
	public void setOid(int oid) {
		this.Oid = oid;
	}
	public String getOname() {
		return Oname;
	}
	public void setOname(String oname) {
		this.Oname = oname;
	}
	public int getOprice() {
		return Oprice;
	}
	public void setOprice(int oprice) {
		this.Oprice = oprice;
	}
	public String getOcategory() {
		return Ocategory;
	}
	public void setOcategory(String ocategory) {
		this.Ocategory = ocategory;
	}
	@Override
	public String toString() {
		return "Orders [Oid=" + Oid + ", Oname=" + Oname + ", Oprice=" + Oprice + ", Ocategory=" + Ocategory + "]";
	}
	
	
	public Orders() {
		// TODO Auto-generated constructor stub
	}
	public Orders(int oid, String oname, int oprice, String ocategory) {
		super();
		this.Oid = oid;
		this.Oname = oname;
		this.Oprice = oprice;
		this.Ocategory = ocategory;
	}
	
	
}
