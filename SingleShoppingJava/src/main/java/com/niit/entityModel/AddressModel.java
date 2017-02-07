package com.niit.entityModel;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "ADDRESS_TABLE")
public class AddressModel {

	
	
	@Id
	private String billingFirstname;
	private String billingEmail;
	private String billingPhone;
	private String billingAddress;
	private String billingCity;
	private String billingPincode;
	private String paymentOption;

	private Date billingTime=java.util.Calendar.getInstance().getTime();

	
	public Date getBillingTime() {
		return billingTime;
	}
	public void setBillingTime(Date billingTime) {
		this.billingTime = billingTime;
	}
	
	public String getPaymentOption() {
		return paymentOption;
	}
	public void setPaymentOption(String paymentOption) {
		this.paymentOption = paymentOption;
	}
	public String getBillingEmail() {
		return billingEmail;
	}
	public void setBillingEmail(String billingEmail) {
		this.billingEmail = billingEmail;
	}
	public String getBillingPhone() {
		return billingPhone;
	}
	public void setBillingPhone(String billingPhone) {
		this.billingPhone = billingPhone;
	}
	public String getBillingAddress() {
		return billingAddress;
	}
	public void setBillingAddress(String billingAddress) {
		this.billingAddress = billingAddress;
	}
	public String getBillingCity() {
		return billingCity;
	}
	public void setBillingCity(String billingCity) {
		this.billingCity = billingCity;
	}
	public String getBillingPincode() {
		return billingPincode;
	}
	public void setBillingPincode(String billingPincode) {
		this.billingPincode = billingPincode;
	}
	public String getBillingFirstname() {
		return billingFirstname;
	}
	public void setBillingFirstname(String billingFirstname) {
		this.billingFirstname = billingFirstname;
	}
	
	
	
	
	
	
	
	
}
