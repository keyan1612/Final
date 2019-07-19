package com.lti.banking.model;

import java.nio.charset.StandardCharsets;
import java.util.Base64;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="reg_bank")
public class Customer {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO,generator="custid_generator")
	@SequenceGenerator(name="custid_generator", sequenceName="acc_no1",allocationSize=1)
	@Column(name="acc_no",updatable=false,nullable=false)
	private int acc_no;
	
	

	@Column(name="user_id")
	private String user_id;
	
	@Column(name="log_pass")
	private String log_pass;
	
	@Column(name="trans_pass")
	private String trans_pass;
     public Customer() {
	 
 }
	public int getAcc_no() {
		return acc_no;
	}
	public void setAcc_no(int acc_no) {
		this.acc_no = acc_no;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getLog_pass() {
		return log_pass;
	}
	public void setLog_pass(String log_pass) {
		Base64.Encoder encoder=Base64.getEncoder();
		String normalString=log_pass;
		String encodedString=encoder.encodeToString(normalString.getBytes(StandardCharsets.UTF_8));
		this.log_pass = encodedString;	
		}
	
	public String getTrans_pass() {
		return trans_pass;
	}
	public void setTrans_pass(String trans_pass) {
		Base64.Encoder encoder=Base64.getEncoder();
		String normalString=trans_pass;
		String encodedString=encoder.encodeToString(normalString.getBytes(StandardCharsets.UTF_8));
		this.trans_pass = encodedString;
	}
	@Override
	public String toString() {
		return "Customer [acc_no=" + acc_no + ", user_id=" + user_id + ", log_pass=" + log_pass + ", trans_pass="
				+ trans_pass + "]";
	}

}
