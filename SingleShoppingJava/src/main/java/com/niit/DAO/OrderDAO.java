package com.niit.DAO;

import java.util.List;

import com.niit.entityModel.OrderModel;
import com.niit.entityModel.ProductModel;
import com.niit.entityModel.User;

public interface OrderDAO {
	public boolean add(ProductModel productModel, User user);	
	  public List<OrderModel> getOrderListbyname(String username);
	  public Boolean remove(int orderId);
	  public void removeorderbycartid(String username);
}
