package com.niit.DAOImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.hibernate.query.Query;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.DAO.OrderDAO;
import com.niit.entityModel.CategoryModel;
import com.niit.entityModel.OrderModel;
import com.niit.entityModel.ProductModel;
import com.niit.entityModel.User;

@Repository("cartDAO")
public class OrderDAOImpl implements OrderDAO {
	 Logger log = LoggerFactory.getLogger(OrderDAOImpl.class);
	
	  @Autowired
	    SessionFactory sessionFactory;

	    //-------------------------------------------------------add product----------------------------------------------------------------------------------------------
	  public boolean add(ProductModel productModel, User user, int quantity, int total) {
		  log.debug("inside add product in OrderDAOImpl");
		  Session session = sessionFactory.openSession();
			session.beginTransaction();
			OrderModel orderModel= new OrderModel();
		orderModel.setUser(user);
		orderModel.setProductModel(productModel);
		orderModel.setQuantity(quantity);
		orderModel.setTotal(total);	
			session.saveOrUpdate(orderModel);
			session.getTransaction().commit();
			session.close();
			log.debug("leaving add product in OrderDAOImpl");
			return true;
		}

	    //-------------------------------------------------------get OrderListby name----------------------------------------------------------------------------------------------
	    @SuppressWarnings({ "deprecation", "unchecked" })
	    public List<OrderModel> getOrderListbyname(String username) {
	    	log.debug("inside getOrderListbyname in OrderDAOImpl");
	    	Session session = sessionFactory.openSession();
	    	session.beginTransaction();

		Criteria cr = session.createCriteria(OrderModel.class);     //The Criteria API provides the org.hibernate.criterion.Projections class which can be used to get average, maximum or minimum of the property values. 
		cr.add(Restrictions.like("user.username", username));		//Restrictions provide certain conditions for query
		List<OrderModel> list = cr.list();
		log.debug("leaving getOrderListbyname in OrderDAOimpl");
		return list;

	    }
	    
	    //-------------------------------------------------------remove order----------------------------------------------------------------------------------------------
	    public Boolean remove(int orderId){
	    	log.debug("inside remove order in OrderDAOImpl");
	    	Session session = sessionFactory.openSession();
			session.beginTransaction();
			
			OrderModel orderModel= new OrderModel();
			orderModel.setOrderid(orderId);
			session.delete(orderModel);
			session.getTransaction().commit();
			session.close();
			log.debug("leaving removeorder in OrderDAOImpl");
			return true;

	    }

	    //-------------------------------------------------------remove complete cart by cartId----------------------------------------------------------------------------------------------
	    public void removeorderbycartid(String username){
	    	log.debug("inside remove orderbycartid in OrderDAOImpl");
	    	Session session = sessionFactory.openSession();
			session.beginTransaction();
	
	    	@SuppressWarnings("rawtypes")
			Query q = session.createQuery("delete OrderModel where username = username");
	    	q.executeUpdate();
	    	session.getTransaction().commit();
			session.close();
			log.debug("leaving remove orderbyId in OrderDAOImpl");
	    }
	    
	    
	    @Transactional
	    @SuppressWarnings({ "unchecked", "deprecation", "rawtypes" })
		public boolean addingproduct(String username, String productId, int quantity) {
	    	log.debug("inside getByName in categoryDAOImpl");
	    	Session session = sessionFactory.openSession();
			session.beginTransaction();
	
	    	String hql = "from OrderModel where username =" + "'" + username + "'"+" and productId =" + "'" + productId+"'";
		Query<OrderModel> query = sessionFactory.getCurrentSession().createQuery(hql);
		List<OrderModel> list = (List<OrderModel>) query.list();
		if (list != null && !list.isEmpty()) {
			
			
			
			
			quantity=query.uniqueResult().getQuantity()+quantity;
			int total=quantity*query.uniqueResult().getProductModel().getProductPrice();
			int orderId=query.uniqueResult().getOrderid();
			Query query1 = session.createQuery("update OrderModel set quantity = :quantity " +
    				" where orderid = :orderid");
		query1.setParameter("quantity", quantity);
		
query1.setParameter("orderid", orderId);
 query1.executeUpdate();
	Query query2 = session.createQuery("update OrderModel set total = :total " +
			" where orderid = :orderid");
query2.setParameter("total", total);

query2.setParameter("orderid", orderId);
query2.executeUpdate();
		
 session.getTransaction().commit();
				session.close();
			
			return true;
		}
			else{
		   
			session.getTransaction().commit();
			session.close();
		   return false;
		}	}}

	    


