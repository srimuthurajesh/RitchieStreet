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

@Repository("cartDAO")
public class OrderDAOImpl implements OrderDAO {

	
	  @Autowired
	    SessionFactory sessionFactory;

	  public boolean add(ProductModel productModel) {
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			
//			Order order = new Order();
//			order.setProductModel(productModel);
//order.setProductName(productModel.getProductName());
//order.setProductPrice(productModel.getProductPrice());
//order.setProductQuantity(productModel.getProductQuantity());
//			
//			session.saveOrUpdate(order);

			session.getTransaction().commit();
			session.close();

			return true;
		}


//	    @SuppressWarnings({ "deprecation", "unchecked" })
//	    public List<CartModel> getCartListbyId(int cartId) {
//		Session session = sessionFactory.openSession();
//		session.beginTransaction();
//
//		Criteria cr = session.createCriteria(CartModel.class);
//		cr.add(Restrictions.like("cartId", cartId));
//
//		List<CartModel> list = cr.list();
//
//		return list;
//
//	    }

}
