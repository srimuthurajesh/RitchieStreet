package com.niit.DAOImpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.niit.DAO.UserDAO;
import com.niit.entityModel.AddressModel;
import com.niit.entityModel.CountModel;
import com.niit.entityModel.User;

@Repository("userDAO")
public class UserDAOImpl implements UserDAO {
    Logger log = LoggerFactory.getLogger(UserDAOImpl.class);

/*  @Component � generic and can be used across application.
    @Service � annotate classes at service layer level.
    @Controller � annotate classes at presentation layers level, mainly used in Spring MVC.
    @Repository � annotate classes at persistence layer, which will act as database repository.
    */
    
    @Autowired(required = true)
	private SessionFactory sessionFactory;

    
    
  //-------------------------------------------------------addUser----------------------------------------------------------------------------------------------
    public boolean validationRegistration(User userModelObj) {
		log.debug("inside validationRegistration in UserDAOImpl");
	Session session = sessionFactory.openSession();				//	The main function of the Session is to offer create, read and delete operations for instances of mapped entity classes. Instances may exist in one of three states:
	Transaction trans = session.beginTransaction();

		session.save(userModelObj);
		trans.commit();
		session.close();
		log.debug("leaving validationRegistration in UserDAOImpl");
		return true;
	}

    
    //-------------------------------------------------------get User by ID----------------------------------------------------------------------------------------------
    public User getbyId(String userName) {
    	log.debug("inside getbyID in UserDAOImpl");
	Session session = sessionFactory.openSession();
	session.beginTransaction();
	log.debug("leaving getbyID in UserDAOImpl");
	return (User) session.get(User.class, userName);
    }


    public CountModel getcount(int count) {
    	log.debug("inside getbyID in UserDAOImpl");
	Session session = sessionFactory.openSession();
	log.debug("leaving getbyID in UserDAOImpl");
	return (CountModel) session.get(CountModel.class, count);
    }

    public void updatecount(int countvalue){
    	System.out.println("hii am inside update");
    	Session session = sessionFactory.openSession();				//	The main function of the Session is to offer create, read and delete operations for instances of mapped entity classes. Instances may exist in one of three states:
    session.beginTransaction();
  
	
CountModel countModel=new CountModel();
countModel.setCount(1);
countModel.setCountvalue(countvalue);
System.out.println(countvalue);
session.saveOrUpdate(countModel);

    }

    public void addAddress(AddressModel addressModel){
    	log.debug("inside getbyID in UserDAOImpl");
    	Session session = sessionFactory.openSession();
    	session.beginTransaction();
    	session.save(addressModel);
    	session.getTransaction().commit();
		session.close();
		
    	

    	
    }



}