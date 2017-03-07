package com.niit.entityModel;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@SuppressWarnings("serial") //Indicates that the named compiler warnings should be suppressed in the annotated element 
@Entity
@Table(name = "USER")
public class User implements Serializable { //Serializable is a markup interface, implemented to make model class persist. makes database to understand

	@Id
	@Column(name = "username")
	private String username;

    @Column(name = "firstname")
    private String firstname;

    @Column(name = "lastname")
    private String lastname;

	@Column(name = "emailid")
	private String emailid;

	@Column(name = "password")
	private String password;
	
	@Column(name = "mobile")
	private String mobile;
	
    @Column(name = "address")
    private String address;
    
	@Column(name = "streetname")
	private String streetname;
	
	@Column(name = "cityname")
	private String cityname;
	
	@Column(name = "pincode")
	private String pincode;
	
    @Column(name = "role")
    private String role = "ROLE_USER";
    
    @Column
    private boolean enabled=true;
    
    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    private List<OrderModel> OrderModel;
    
    
    
	
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
    //-------------------------getter setter for Firstname-------------------------------------

    public void setFirstname(String firstname) {
	this.firstname = firstname;
    }

    public String getFirstname() {
	return firstname;
    }

    //-------------------------getter setter for Secondname-------------------------------------

    public String getLastname() {
	return lastname;
    }

    public void setLastname(String lastname) {
	this.lastname = lastname;
    }

    //-------------------------getter setter for Address-------------------------------------

    public String getAddress() {
	return address;
    }

    public void setAddress(String address) {
	this.address = address;
    }

	public List<OrderModel> getOrderModel() {
		return OrderModel;
	}

	public void setOrderModel(List<OrderModel> orderModel) {
		OrderModel = orderModel;
	}
	
    
    
}
