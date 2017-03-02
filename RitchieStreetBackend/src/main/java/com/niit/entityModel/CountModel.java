package com.niit.entityModel;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "COUNT_TABLE")
public class CountModel implements Serializable{
	@Id
	int count;
	
	int countvalue;
	

	public int getCountvalue() {
		return countvalue;
	}

	public void setCountvalue(int countvalue) {
		this.countvalue = countvalue;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}
	
	

}
