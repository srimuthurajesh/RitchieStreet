package com.niit.Controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
@Controller
public class CartController {
	Logger log = LoggerFactory.getLogger(CategoryController.class);
	  @Autowired
	    private ProductDAO productDAO;
	  
	   @Autowired
	    private UserDAO userDAO;

	   @Autowired
	    private OrderDAO orderDAO;


	   @Autowired
	    private CategoryDAO categoryDAO;
	   

//-------------------------------------------------------Search Bar----------------------------------------------------------------------------------------------
		 @RequestMapping(value="/search",method=RequestMethod.GET)
		    public String search(@RequestParam("tag")String tag, Model model, HttpSession session)
{
			 
			  log.debug("inside categorypage controller");
	    	  model.addAttribute("values", productDAO.getProductListbytag(tag));
		model.addAttribute("categoryList", categoryDAO.getCategoryList());
		
		String User = (String)session.getAttribute("User");
		model.addAttribute("cartList", orderDAO.getOrderListbyname(User));
		model.addAttribute("cartsize", orderDAO.getOrderListbyname(User).size());
		model.addAttribute("search","Search results for "+tag);
		log.debug("leaving categorypage controller");
		return "categorypage";
}
	   
//-------------------------------------------------------Add to cart----------------------------------------------------------------------------------------------
	 @RequestMapping(value="/addtocart",method=RequestMethod.GET)
	    public String addtocart(@RequestParam("username")String username, @RequestParam("productId")String productId, @RequestParam("quantity") int quantity,@RequestParam("action")String action, HttpSession session,Model model){
		 log.debug("inside addtocart controller");
		
		 if(action.equals("BuyNow")){
		 model.addAttribute("categoryList", categoryDAO.getCategoryList());
		 orderDAO.add(productDAO.getById(productId),userDAO.getbyId(username),quantity,quantity*productDAO.getById(productId).getProductPrice());
		 model.addAttribute("cartList", orderDAO.getOrderListbyname(username));
		model.addAttribute("cartsize", orderDAO.getOrderListbyname(username).size());
		log.debug("leaving addtocart controller");
		return "cartpage";}
		 else{
			 orderDAO.add(productDAO.getById(productId),userDAO.getbyId(username),quantity,quantity*productDAO.getById(productId).getProductPrice());
			  
			 model.addAttribute("productbyId", productDAO.getById(productId));
				model.addAttribute("productId", "productId");
				model.addAttribute("categoryList", categoryDAO.getCategoryList());
				model.addAttribute("productList", productDAO.getProductListbycategory(productDAO.getById(productId).getCategoryId()));
				model.addAttribute("category", categoryDAO.getById(productDAO.getById(productId).getCategoryId()));
				
				String User = (String)session.getAttribute("User");
				model.addAttribute("cartList", orderDAO.getOrderListbyname(User));
				model.addAttribute("cartsize", orderDAO.getOrderListbyname(User).size());
				
				return "productpage";
		 }
	    }
	

	//-------------------------------------------------------Add to cart without quantity----------------------------------------------------------------------------------------------
	 @RequestMapping(value="/cartpage",method=RequestMethod.GET)
	    public String addtocart(@RequestParam("username")String username, HttpSession session, Model model){
		 log.debug("inside addtocart controlller without quantity");
		 model.addAttribute("categoryList", categoryDAO.getCategoryList());	
		 model.addAttribute("cartList", orderDAO.getOrderListbyname(username));
		model.addAttribute("cartsize", orderDAO.getOrderListbyname(username).size());
		log.debug("leaving addtocart controller without quantity");
		 return "cartpage";
	    }
	
	 

	//-------------------------------------------------------Remove from cart----------------------------------------------------------------------------------------------
	 @RequestMapping(value="/removeorder",method=RequestMethod.GET)
	    public String removeorder(@RequestParam("orderId")int orderId, @RequestParam("username")String username, Model model){
		 log.debug("inside remove order controller");
		 model.addAttribute("categoryList", categoryDAO.getCategoryList());
			 orderDAO.remove(orderId);
			 model.addAttribute("cartList", orderDAO.getOrderListbyname(username));
			 log.debug("leaving remove order controller");
			 return "cartpage";
		 }
	
	
	 

	//-------------------------------------------------------Checkout page----------------------------------------------------------------------------------------------
	 @RequestMapping(value="/checkout",method=RequestMethod.GET)
		 public String checkout(@RequestParam("username")String username,Model model){
		 log.debug("inside checkout controller");
		 model.addAttribute("cartList", orderDAO.getOrderListbyname(username));
		 model.addAttribute("addressModel", new AddressModel());		 
		 model.addAttribute("categoryList", categoryDAO.getCategoryList());	
		 log.debug("leaving checkout controller");
		 return "checkout";
			 }

	//-------------------------------------------------------Card Details page----------------------------------------------------------------------------------------------
	 @RequestMapping(value="/carddetails",method=RequestMethod.GET)
	    public String paymentbycard( AddressModel addressModel, Model model, HttpSession session){
		 log.debug("inside paymentbycard controller");
		 session.setAttribute("addressModel", addressModel);
		 model.addAttribute("categoryList", categoryDAO.getCategoryList());
		 model.addAttribute("carddetailModel",new CarddetailModel());
		 log.debug("leaving paymentbycard controller");
		 if(addressModel.getPaymentOption().equals("By Card")){		
			 return "carddetails";}
	else{
		return "paymentsuccess";
	}
		 }
		 

	//-------------------------------------------------------Continue shopping end page----------------------------------------------------------------------------------------------
	 @RequestMapping(value="finalindex")
	 public String cardpaymentsuccess(@RequestParam("username") String username, Model model){
		 log.debug("inside cardpayment success controller");
		 model.addAttribute("categoryList", categoryDAO.getCategoryList());
		 orderDAO.removeorderbycartid(username);
			model.addAttribute("categoryList", categoryDAO.getCategoryList());
			model.addAttribute("microcontrollerList",productDAO.getProductListbycategory("C1"));
			model.addAttribute("RoboticsList",productDAO.getProductListbycategory("C2"));
			model.addAttribute("toolsList",productDAO.getProductListbycategory("C5"));
			model.addAttribute("testingList",productDAO.getProductListbycategory("C8"));
			log.debug("leaving cardpaymeny success controller");
		 return "index";
		 
		 
	 }
}
