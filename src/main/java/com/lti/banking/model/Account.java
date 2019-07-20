package com.lti.banking.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="acc")
public class Account {
	
	
	@Column(name="subject")
	private String subject;
	
	@Column(name="fname")
	private String fname;
	
	@Column(name="mname")
	private String mname;
	
	@Column(name="lname")
	private String lname;
	
	@Column(name="faname")
	private String faname;
	
	@Id
	@Column(name="mobno")
	private String mobno;
	
	
	@Column(name="eid")
	private String eid;
	
    @Column(name="aadhar")
   	private String aadhar;
    
    @Column(name="address")
   	private String address;
    
    
    @Column(name="dob")
   	private String dob;
    
    @Column(name="occtype")
   	private String occtype;
    
    @Column(name="sincome")
   	private String sincome;
    
    @Column(name="gincome")
   	private String gincome;
    
    @Column(name="dept")
   	private String dept;

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getFaname() {
		return faname;
	}

	public void setFaname(String faname) {
		this.faname = faname;
	}

	public String getMobno() {
		return mobno;
	}

	public void setMobno(String mobno) {
		this.mobno = mobno;
	}

	public String getEid() {
		return eid;
	}

	public void setEid(String eid) {
		this.eid = eid;
	}

	public String getAadhar() {
		return aadhar;
	}

	public void setAadhar(String aadhar) {
		this.aadhar = aadhar;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getOcctype() {
		return occtype;
	}

	public void setOcctype(String occtype) {
		this.occtype = occtype;
	}

	public String getSincome() {
		return sincome;
	}

	public void setSincome(String sincome) {
		this.sincome = sincome;
	}

	public String getGincome() {
		return gincome;
	}

	public void setGincome(String gincome) {
		this.gincome = gincome;
	}

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

	@Override
	public String toString() {
		return "Account [subject=" + subject + ", fname=" + fname + ", mname=" + mname + ", lname=" + lname
				+ ", faname=" + faname + ", mobno=" + mobno + ", eid=" + eid + ", aadhar=" + aadhar + ", address="
				+ address + ", dob=" + dob + ", occtype=" + occtype + ", sincome=" + sincome + ", gincome=" + gincome
				+ ", dept=" + dept + "]";
	}



}

