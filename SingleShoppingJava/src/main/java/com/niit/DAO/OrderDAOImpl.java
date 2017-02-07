package com.niit.DAO;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.entityModel.OrderModel;
import com.niit.entityModel.ProductModel;
import com.niit.entityModel.User;

@Repository("cartDAO")
public class OrderDAOImpl implements OrderDAO {

	
	  @Autowired
	    SessionFactory sessionFactory;

	  public boolean add(ProductModel productModel, User user) {
			Session session = sessionFactory.openSession();
			session.beginTransaction();
		
			OrderModel orderModel= new OrderModel();
		orderModel.setUser(user);
		orderModel.setProductModel(productModel);
			
			session.saveOrUpdate(orderModel);

			session.getTransaction().commit();
			session.close();

			return true;
		}


	    @SuppressWarnings({ "deprecation", "unchecked" })
	    public List<OrderModel> getOrderListbyname(String username) {
	 	Session session = sessionFactory.openSession();
		session.beginTransaction();

		Criteria cr = session.createCriteria(OrderModel.class);
		cr.add(Restrictions.like("user.username", username));

		List<OrderModel> list = cr.list();

		return list;

	    }
	    
	    public Boolean remove(int orderId){
	    	
	    	Session session = sessionFactory.openSession();
			session.beginTransaction();
			
			OrderModel orderModel= new OrderModel();
			orderModel.setOrderId(orderId);
			session.delete(orderModel);
			session.getTransaction().commit();
			session.close();

			return true;

	    }

}
