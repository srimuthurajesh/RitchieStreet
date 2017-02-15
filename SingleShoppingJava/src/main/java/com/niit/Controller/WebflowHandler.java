package com.niit.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.niit.DAO.OrderDAO;
import com.niit.entityModel.AddressModel;
import com.niit.entityModel.CarddetailModel;


@Component
public class WebflowHandler {
	HttpSession session;
	@Autowired
	OrderDAO orderDAO;
	
	public AddressModel initFlow(){
		return new AddressModel();
	}
	public CarddetailModel initFlow2(){
		return new CarddetailModel();
	}

	public void initFlow4(){
		orderDAO.removeorderbycartid((String) session.getAttribute("User"));
	}
}
