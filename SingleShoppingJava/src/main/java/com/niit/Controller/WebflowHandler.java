package com.niit.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.niit.DAO.OrderDAO;
import com.niit.entityModel.AddressModel;
import com.niit.entityModel.CarddetailModel;
import com.niit.entityModel.OrderModel;

@Component
public class WebflowHandler {

	@Autowired
	OrderDAO orderDAO;
	
	public AddressModel initFlow(){
		return new AddressModel();
	}
	public CarddetailModel initFlow2(){
		return new CarddetailModel();
	}
	
	public AddressModel initFlow3(AddressModel addressModel, HttpSession session){
	 session.setAttribute("addressModel", addressModel);
return addressModel;
	}	
public List<OrderModel> initFlow4(String username){
	return orderDAO.getOrderListbyname(username);
}
	
}
