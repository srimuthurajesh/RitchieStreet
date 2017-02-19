package com.niit.DAOImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.DAO.ProductDAO;
import com.niit.entityModel.ProductModel;

@Repository("productDAO")
public class ProductDAOImpl implements ProductDAO {
	Logger log = LoggerFactory.getLogger(UserDAOImpl.class);

    @Autowired
    SessionFactory sessionFactory;
    
  //-------------------------------------------------------add product----------------------------------------------------------------------------------------------
	public boolean addProduct(ProductModel productModel) {
		log.debug("inside addproduct in ProductDAOImpl");
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.save(productModel);
		session.getTransaction().commit();
		session.close();
		log.debug("leaving addproduct in ProductDAOImpl");
		return true;
	}

	
	//-------------------------------------------------------delete product---------------------------------------------------------------------------------------------
    public boolean deleteProduct(String productId) {
    	log.debug("inside deleteproduct in ProductDAOImpl");
    	Session session = sessionFactory.openSession();
		session.beginTransaction();
		ProductModel productModel = new ProductModel();
		productModel.setProductId(productId);
		session.delete(productModel);
		session.getTransaction().commit();
		session.close();
		log.debug("leaving deleteproduct in ProductDAOImpl");
		return true;
	}

  //-------------------------------------------------------getproductList----------------------------------------------------------------------------------------------
	@SuppressWarnings({ "deprecation", "unchecked" })
	public List<ProductModel> getProductList() {
		log.debug("inside getproductList in ProductDAOImpl");
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		List<ProductModel> list = (List<ProductModel>) session.createCriteria(ProductModel.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		log.debug("leaving getproductList in ProductDAOImpl");
		return list;

	}

    //-------------------------Retrieve by Id---------------------------------
    public ProductModel getById(String productId) {
	log.debug("inside getbyId in ProductDAOImpl");
	Session session = sessionFactory.openSession();
	session.beginTransaction();
	log.debug("before query");
	log.debug("leaving getbyId in ProductDAOImpl");
	return session.get(ProductModel.class, productId);
    }

    //-----------------------------------saveOrUpdate-----------------------------------------------
    @Transactional
    public void saveOrUpdate(ProductModel productModel) {
    	log.debug("inside saveOrUpdate in ProductDAOImpl");
	sessionFactory.getCurrentSession().saveOrUpdate(productModel);

    }

  //-------------------------------------------------------get product list by category--------------------------------------------------------------------------------------------
    @SuppressWarnings({ "deprecation", "unchecked" })
    public List<ProductModel> getProductListbycategory(String categoryId) {
    	log.debug("inside getproductListbycategory in ProductDAOImpl");
    	Session session = sessionFactory.openSession();
    	session.beginTransaction();
    	Criteria cr = session.createCriteria(ProductModel.class);  //The Criteria API provides the org.hibernate.criterion.Projections class which can be used to get average, maximum or minimum of the property values. 
    	cr.add(Restrictions.like("categoryId", categoryId));		//Restrictions provide certain conditions for query
    	List<ProductModel> list = cr.list();
    	log.debug("leaving addproduct in ProductDAOImpl");
	return list;
    }
    
}
