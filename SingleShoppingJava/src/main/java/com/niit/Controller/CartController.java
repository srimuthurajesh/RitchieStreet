package com.niit.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.DAO.CategoryDAO;
import com.niit.DAO.OrderDAO;
import com.niit.DAO.ProductDAO;
import com.niit.DAO.UserDAO;
import com.niit.entityModel.AddressModel;
import com.niit.entityModel.CarddetailModel;
import com.niit.entityModel.OrderModel;
@Controller
public class CartController {

	  @Autowired
	    private ProductDAO productDAO;

	
	   @Autowired
	    private UserDAO userDAO;

	   @Autowired
	    private OrderDAO orderDAO;


	   @Autowired
	    private CategoryDAO categoryDAO;
	   
	 @RequestMapping(value="/addtocart",method=RequestMethod.GET)
	    public String addtocart(@RequestParam("username")String username, @RequestParam("productId")String productId, Model model){
		 orderDAO.add(productDAO.getById(productId),userDAO.getbyId(username));
		 model.addAttribute("cartList", orderDAO.getOrderListbyname(username));
		 return "cartpage";
	    }
	
	 
	 
	 @RequestMapping(value="/removeorder",method=RequestMethod.GET)
	    public String removeorder(@RequestParam("orderId")int orderId, @RequestParam("username")String username, Model model){
	
			 orderDAO.remove(orderId);
			 model.addAttribute("cartList", orderDAO.getOrderListbyname(username));
			 return "cartpage";
		 }
	
	
	 
	 
	 @RequestMapping(value="/checkout",method=RequestMethod.GET)
		 public String checkout(@RequestParam("username")String username, Model model){
		 model.addAttribute("cartList", orderDAO.getOrderListbyname(username));
		 model.addAttribute("addressModel", new AddressModel());		 
		 model.addAttribute("categoryList", categoryDAO.getCategoryList());	
		return "checkout";
			 }
	
	 @RequestMapping(value="/carddetails",method=RequestMethod.GET)
	    public String paymentbycard( @RequestParam("addressModel")AddressModel addressModel, Model model){

		 model.addAttribute("addressModel", addressModel);
		 model.addAttribute("categoryList", categoryDAO.getCategoryList());
		 model.addAttribute("carddetailModel",new CarddetailModel());
	return "carddetails";
	
		 }
		 
}
