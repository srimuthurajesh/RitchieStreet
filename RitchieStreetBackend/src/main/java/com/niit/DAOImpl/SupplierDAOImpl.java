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

import com.niit.DAO.SupplierDAO;
import com.niit.entityModel.SupplierModel;

@Repository("supplierDAO")
public class SupplierDAOImpl implements SupplierDAO {
   	Logger log = LoggerFactory.getLogger(UserDAOImpl.class);

	@Autowired
    SessionFactory sessionFactory;

	 //-------------------------------------------------------add psupplier----------------------------------------------------------------------------------------------
	public boolean addsupplier(SupplierModel supplierModel) {
		log.debug("inside addsupplier in SupplierDAOImpl");
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.saveOrUpdate(supplierModel);
		session.getTransaction().commit();
		session.close();
		log.debug("leaving addsupplier in SupplierDAOImpl");
		return true;
	}

	 //-------------------------------------------------------delete supplier----------------------------------------------------------------------------------------------
    public boolean deletesupplier(String supplierId) {
    	log.debug("inside deletesupplier in SupplierDAOImpl");
    	Session session = sessionFactory.openSession();
		session.beginTransaction();
		SupplierModel supplierModel = new SupplierModel();
		supplierModel.setSupplierId(supplierId);
		session.delete(supplierModel);
		session.getTransaction().commit();
		session.close();
		log.debug("leaving deletesupplier in SupplierDAOImpl");
		return true;
	}

    //-------------------------------------------------------supplier getby Id ----------------------------------------------------------------------------------------------
	@SuppressWarnings({ "unchecked", "deprecation" })
	public SupplierModel getbyId(String supplierId) {
		log.debug("inside getbyid in SupplierDAOImpl");
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		String hql = "from SupplierModel where id =" + "'" + supplierId + "'";
		Query<SupplierModel> query = session.createQuery(hql);
		List<SupplierModel> list = (List<SupplierModel>) query.list();
		log.debug("leaving deletesupplier in SupplierDAOImpl");
		if (list != null && !list.isEmpty()) {
			return list.get(0);
		}
		return null;
	}

	 //-------------------------------------------------------getSupplierList----------------------------------------------------------------------------------------------
	@SuppressWarnings({ "deprecation", "unchecked" })
	public List<SupplierModel> getSupplierList() {
		log.debug("inside getsupplierList in SupplierDAOImpl");
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		List<SupplierModel> list = (List<SupplierModel>) session.createCriteria(SupplierModel.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		log.debug("leaving getsupplierList in SupplierDAOImpl");
		return list;

	}

    //--------------------------------------------get by Name-------------------------------------------------------------
    @SuppressWarnings({ "deprecation", "unchecked" })
    @Transactional
    public SupplierModel getByName(String name) {
    	log.debug("inside getByName in SupplierDAOImpl");
    	String hql = "from Supplier where name =" + "'" + name + "'";
    	Query<SupplierModel> query = sessionFactory.getCurrentSession().createQuery(hql);
    	List<SupplierModel> list = (List<SupplierModel>) query.list();
		log.debug("leaving getByName in SupplierDAOImpl");
	if (list != null && !list.isEmpty()) {
	    return list.get(0);
	}
	return null;
    }


}
