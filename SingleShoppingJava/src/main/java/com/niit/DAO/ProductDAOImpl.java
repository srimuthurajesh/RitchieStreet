package com.niit.DAO;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.entityModel.ProductModel;

@Service("productDAO")
public class ProductDAOImpl implements ProductDAO {
	Logger log = LoggerFactory.getLogger(UserDAOImpl.class);

    @Autowired
    SessionFactory sessionFactory;
	public boolean addProduct(ProductModel productModel) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		session.save(productModel);

		session.getTransaction().commit();
		session.close();

		return true;
	}

    public boolean deleteProduct(String productId) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		ProductModel productModel = new ProductModel();
		productModel.setProductId(productId);

		session.delete(productModel);
		session.getTransaction().commit();
		session.close();

		return true;
	}

	@SuppressWarnings({ "deprecation", "unchecked" })
	public List<ProductModel> getProductList() {
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		List<ProductModel> list = (List<ProductModel>) session.createCriteria(ProductModel.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return list;

	}

    //-------------------------Retrieve by Id---------------------------------
    public ProductModel getById(String productId) {
	log.debug("inside getbyId");
	Session session = sessionFactory.openSession();
	session.beginTransaction();
	log.debug("before query");
	return session.get(ProductModel.class, productId);

    }

    //-----------------------------------saveOrUpdate-----------------------------------------------
    @Transactional
    public void saveOrUpdate(ProductModel productModel) {
	sessionFactory.getCurrentSession().saveOrUpdate(productModel);

    }

    @SuppressWarnings({ "deprecation", "unchecked" })
    public List<ProductModel> getProductListbycategory(String categoryId) {
	Session session = sessionFactory.openSession();
	session.beginTransaction();

	Criteria cr = session.createCriteria(ProductModel.class);
	cr.add(Restrictions.like("categoryId", categoryId));

	List<ProductModel> list = cr.list();

	return list;

    }
    
}
