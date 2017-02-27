package com.niit.DAOImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.DAO.CategoryDAO;
import com.niit.entityModel.CategoryModel;

@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO {
	 Logger log = LoggerFactory.getLogger(UserDAOImpl.class);

    @Autowired
    SessionFactory sessionFactory;

    //-------------------------------------------------------saveOrUpdate Categoy----------------------------------------------------------------------------------------------
	public boolean addCategory(CategoryModel categoryModel) {
		log.debug("inside addcategory");
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.saveOrUpdate(categoryModel);
		session.getTransaction().commit();
		session.close();
		log.debug("leaving addcategory");
		return true;
	}

	 //-------------------------------------------------------delete category----------------------------------------------------------------------------------------------
	public boolean deleteCategory(String categoryId) {
		log.debug("inside delete category");
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		CategoryModel categoryModel = new CategoryModel();
		categoryModel.setCategoryId(categoryId);
		session.delete(categoryModel);
		session.getTransaction().commit();
		session.close();
		log.debug("leaving delete category");
		return true;
	}

	 //-------------------------------------------------------get category list----------------------------------------------------------------------------------------------
	@SuppressWarnings({ "deprecation", "unchecked" })
	public List<CategoryModel> getCategoryList() {
		log.debug("inside getcategorylist");
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		List<CategoryModel> list = (List<CategoryModel>) session.createCriteria(CategoryModel.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		log.debug("leaving getcategorylist");
		return list;

	}

	 //-------------------------------------------------------get category by ID----------------------------------------------------------------------------------------------
    public CategoryModel getById(String categoryId) {
    	log.debug("inside getbyid in categoryDAOImpl");
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		log.debug("leaving getbyid in catgoryDAOImpl");
	return session.get(CategoryModel.class, categoryId);

	}
    
    
    //-------------------------------------------------------get caegory by Id----------------------------------------------------------------------------------------------
    @SuppressWarnings({ "unchecked", "deprecation" })
	@Transactional
    public CategoryModel getByName(String name) {
    	log.debug("inside getByName in categoryDAOImpl");
    	String hql = "from CategoryModel where name =" + "'" + name + "'";
	Query<CategoryModel> query = sessionFactory.getCurrentSession().createQuery(hql);
	List<CategoryModel> list = (List<CategoryModel>) query.list();
	if (list != null && !list.isEmpty()) {
	    return list.get(0);
	}
	return null;
    }

}
