package com.niit.entityModel;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "USER")
public class User implements Serializable { //Serializable is a markup interface, implemented to make model class persist

	@Id
	@Column(name = "username")
	private String username;
	@Column(name = "emailid")
	private String emailid;

	@Column(name = "password")
	private String password;
	@Column(name = "dob")
	private String dob;
	@Column(name = "mobile")
	private String mobile;
	@Column(name = "streetname")
	private String streetname;
	@Column(name = "cityname")
	private String cityname;
	@Column(name = "pincode")
	private String pincode;
    @Column(name = "role")
    private String role = "ROLE_USER";
    @Column
    private boolean enabled;

    //-------------------------getter setter for userName------------------------------
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

    //-------------------------getter setter for emailId------------------------------
	public String getEmailid() {
		return emailid;
	}

	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}

    //-------------------------getter setter for password------------------------------
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

    //-------------------------getter setter for Dob-----------------------------------
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}

    //-------------------------getter setter for mobile----------------------------------
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

    //-------------------------getter setter for steetName------------------------------	
	public String getStreetname() {
		return streetname;
	}

	public void setStreetname(String streetname) {
		this.streetname = streetname;
	}

    //-------------------------getter setter for cityName--------------------------------	
	public String getCityname() {
		return cityname;
	}

	public void setCityname(String cityname) {
		this.cityname = cityname;
	}

    //-------------------------getter setter for pinCode---------------------------------
	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

    //-------------------------getter setter for Role-------------------------------------
    public String getRole() {
	return role;
	}

    public void setRole(String role) {
	this.role = role;
	}

    //-------------------------getter setter for Enabled-------------------------------------

    public boolean isEnabled() {
	return enabled;
    }

    public void setEnabled(boolean enabled) {
	this.enabled = enabled;
    }
}
