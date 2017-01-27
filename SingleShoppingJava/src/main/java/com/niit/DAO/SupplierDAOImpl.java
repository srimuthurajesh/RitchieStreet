package com.niit.DAO;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.entityModel.SupplierModel;

@Repository
public class SupplierDAOImpl implements SupplierDAO {
    @Autowired
    SessionFactory sessionFactory;

	public boolean addsupplier(SupplierModel supplierModel) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		session.save(supplierModel);

		session.getTransaction().commit();
		session.close();

		return true;

	}

    public boolean deletesupplier(String supplierId) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		SupplierModel supplierModel = new SupplierModel();
		supplierModel.setSupplierId(supplierId);

		session.delete(supplierModel);
		session.getTransaction().commit();
		session.close();

		return true;

	}

	public SupplierModel getbyId(String supplierId) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		String hql = "from supplierModel where id =" + "'" + supplierId + "'";
		Query query = session.createQuery(hql);

		List<SupplierModel> list = (List<SupplierModel>) query.list();
		if (list != null && !list.isEmpty()) {
			return list.get(0);
		}
		return null;
	}

	@SuppressWarnings({ "deprecation", "unchecked" })
	public List<SupplierModel> getSupplierList() {
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		List<SupplierModel> list = (List<SupplierModel>) session.createCriteria(SupplierModel.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return list;

	}


}
