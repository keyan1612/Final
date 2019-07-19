package com.lti.banking.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="fund")
public class Fund {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO,generator="custid_generator")
	@SequenceGenerator(name="custid_generator", sequenceName="trans_id1",allocationSize=1)
	@Column(name="trans_id",updatable=false,nullable=false)
	private int trans_id;
	
	
	@Column(name="from_acc")
	private String from_acc;
	
	
	@Column(name="to_acc")
	private String to_acc;
	
	@Column(name="amt")
	private String amt;
	
	@Column(name="trans_date")
	private String trans_date;
	

	@Column(name="remark")
	private String remark;
	


	


	


	public String getFrom_acc() {
		return from_acc;
	}


	public void setFrom_acc(String from_acc) {
		this.from_acc = from_acc;
	}


	public String getRemark() {
		return remark;
	}


	public void setRemark(String remark) {
		this.remark = remark;
	}


	public int getTrans_id() {
		return trans_id;
	}


	public void setTrans_id(int trans_id) {
		this.trans_id = trans_id;
	}


	public String getTo_acc() {
		return to_acc;
	}


	public void setTo_acc(String to_acc) {
		this.to_acc = to_acc;
	}


	public String getAmt() {
		return amt;
	}


	public void setAmt(String amt) {
		this.amt = amt;
	}


	public String getTrans_date() {
		return trans_date;
	}


	public void setTrans_date(String trans_date) {
		this.trans_date = trans_date;
	}
	
	@Override
	public String toString() {
		return "Fund [trans_id=" + trans_id + ", from_acc=" + from_acc + ", to_acc=" + to_acc + ", amt=" + amt
				+ ", trans_date=" + trans_date + ", remark=" + remark + "]";
	}
}
