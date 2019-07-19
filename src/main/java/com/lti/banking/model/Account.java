package com.lti.banking.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="open_acc")
public class Account {
	@Column(name="fname")
	private String fname;
	
	@Column(name="mname")
	private String mname;
	
	@Column(name="lname")
	private String lname;
	
	@Column(name="fathername")
	private String fathername;
	
	@Id
	@Column(name="mobno")
	private String mobno;
	
    @Column(name="email_id")
	private String email_id;
    
    @Column(name="aadhar_no")
   	private String aadhar_no;
    
    @Column(name="dob")
   	private String dob;
    
    @Column(name="occtype")
   	private String occtype;
    
    @Column(name="sincome")
   	private String sincome;
    
    @Column(name="gincome")
   	private String gincome;

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

	public String getFathername() {
		return fathername;
	}

	public void setFathername(String fathername) {
		this.fathername = fathername;
	}

	public String getMobno() {
		return mobno;
	}

	public void setMobno(String mobno) {
		this.mobno = mobno;
	}

	public String getEmail_id() {
		return email_id;
	}

	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}

	public String getAadhar_no() {
		return aadhar_no;
	}

	public void setAadhar_no(String aadhar_no) {
		this.aadhar_no = aadhar_no;
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

	@Override
	public String toString() {
		return "Account [fname=" + fname + ", mname=" + mname + ", lname=" + lname + ", fathername=" + fathername
				+ ", mobno=" + mobno + ", email_id=" + email_id + ", aadhar_no=" + aadhar_no + ", dob=" + dob
				+ ", occtype=" + occtype + ", sincome=" + sincome + ", gincome=" + gincome + "]";
	}
    
    
    
    
    
    
    
    
	
	
	
	
	
}
