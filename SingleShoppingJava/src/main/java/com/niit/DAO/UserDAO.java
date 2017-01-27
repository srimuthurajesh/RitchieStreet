package com.niit.DAO;

import com.niit.entityModel.User;

public interface UserDAO {
    public boolean validationRegistration(User usermodel);

    public boolean validationLogin(String userName, String password);

	public boolean userDelete(String userName, String password);

    public User getbyId(String userName);


}
