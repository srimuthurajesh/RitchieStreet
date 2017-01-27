package com.niit.DAO;

import java.util.List;

import com.niit.entityModel.SupplierModel;

public interface SupplierDAO {

	public boolean addsupplier(SupplierModel supplierModel);

    public boolean deletesupplier(String supplierId);

	public SupplierModel getbyId(String supplierId);

	public List<SupplierModel> getSupplierList();

}
