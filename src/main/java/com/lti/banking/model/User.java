package com.lti.banking.model;

import java.nio.charset.StandardCharsets;
import java.util.Base64;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="reg_bank")
public class User {
	@Column(name="user_id")
	private String user_id;
	
	@Column(name="log_pass")
	private String log_pass;
	
	@Id
	@Column(name="acc_no")
	private int acc_no;

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

	public int getAcc_no() {
		return acc_no;
	}

	public void setAcc_no(int acc_no) {
		this.acc_no = acc_no;
	}

	@Override
	public String toString() {
		return "User [user_id=" + user_id + ", log_pass=" + log_pass + ", acc_no=" + acc_no + "]";
	}
	
}
