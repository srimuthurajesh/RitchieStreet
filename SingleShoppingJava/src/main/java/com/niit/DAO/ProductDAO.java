package com.niit.DAO;

import java.util.List;

import com.niit.entityModel.ProductModel;

public interface ProductDAO {

	public boolean addProduct(ProductModel productModel);

    public boolean deleteProduct(String productId);

	public List<ProductModel> getProductList();

    public ProductModel getById(String productId);
}
