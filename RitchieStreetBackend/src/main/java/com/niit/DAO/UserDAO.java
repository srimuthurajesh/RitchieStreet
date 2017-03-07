package com.niit.DAO;

import com.niit.entityModel.AddressModel;
import com.niit.entityModel.CountModel;
import com.niit.entityModel.User;

public interface UserDAO {
    public boolean validationRegistration(User usermodel);

    public User getbyId(String userName);

    public CountModel getcount(int count);
    public void updatecount(int countvalue);
    
    public void addAddress(AddressModel addressModel);
    	  
}
