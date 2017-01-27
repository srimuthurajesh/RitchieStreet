package com.niit.DAO;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.entityModel.CategoryModel;

@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO {

    @Autowired
    SessionFactory sessionFactory;

	public boolean addCategory(CategoryModel categoryModel) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		session.saveOrUpdate(categoryModel);

		session.getTransaction().commit();
		session.close();

		return true;
	}


	public boolean deleteCategory(String categoryId) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		CategoryModel categoryModel = new CategoryModel();
		categoryModel.setCategoryId(categoryId);

		session.delete(categoryModel);
		session.getTransaction().commit();
		session.close();

		return true;
	}

	@SuppressWarnings({ "deprecation", "unchecked" })
	public List<CategoryModel> getCategoryList() {
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		List<CategoryModel> list = (List<CategoryModel>) session.createCriteria(CategoryModel.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return list;

	}

	public CategoryModel getById(String username) {

		Session session = sessionFactory.openSession();
		session.beginTransaction();

		return session.get(CategoryModel.class, username);

	}

}
