package com.niit.Controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.DAO.OrderDAO;
import com.niit.DAO.CategoryDAO;
import com.niit.DAO.ProductDAO;
import com.niit.DAO.SupplierDAO;
import com.niit.DAO.UserDAO;
import com.niit.entityModel.CategoryModel;
import com.niit.entityModel.OrderModel;
import com.niit.entityModel.ProductModel;
import com.niit.entityModel.SupplierModel;
import com.niit.entityModel.User;

@Controller
public class ProductController {
    Logger log = LoggerFactory.getLogger(ProductController.class);
    @Autowired
    private CategoryDAO categoryDAO;

    @Autowired
    private ProductDAO productDAO;

    @Autowired
    private SupplierDAO supplierDAO;
    

    @Autowired
    private UserDAO userDAO;

    @Autowired
    private OrderDAO cartDAO;
    

    @Autowired
    private OrderDAO orderDAO;
    
//    ---------------------------------------------------ADMIN-------------------------------------------------


    // ---------------------------------product---------------------------------
    @RequestMapping(value = "/product", method = RequestMethod.GET) //mapping for "/product"
    public String productPage(Model model) {

	model.addAttribute("productModel", new ProductModel());
	model.addAttribute("supplierModel", new SupplierModel());
	model.addAttribute("categoryModel", new CategoryModel());

	model.addAttribute("productlist", productDAO.getProductList()); //object for productList
	model.addAttribute("categorylist", categoryDAO.getCategoryList()); //object for categoryList
	model.addAttribute("supplierlist", supplierDAO.getSupplierList()); //object for supplierList
	model.addAttribute("page_name", "Product");
	return "admin_product";

	}

    // ---------------------------------add---------------------------------
    @RequestMapping(value = "/addproduct", method = RequestMethod.GET) //mapping for "/addproduct"
    public String addProduct(@ModelAttribute("productModel")ProductModel productModel, HttpServletRequest request,
	    RedirectAttributes attributes, BindingResult result)
	{


        String path = "C:\\Users\\IntelliGEnI\\Documents\\Eclipse Workspace\\SingleShoppingJava\\src\\main\\webapp\\WEB-INF\\resources\\product\\";
        
	if (result.hasErrors()) {
	    System.out.println("Error ::: " + result.toString());
	} else {

	    CategoryModel categoryModel = categoryDAO.getByName(productModel.getCategoryModel().getCategoryName());
	    categoryDAO.saveOrUpdate(categoryModel);
	    SupplierModel supplierModel = supplierDAO.getByName(productModel.getSupplierModel().getSupplierName());
	    supplierDAO.saveOrUpdate(supplierModel);

	    productModel.setCategoryModel(categoryModel);
	    productModel.setSupplierModel(supplierModel);

	    productModel.setCategoryId(categoryModel.getCategoryId());
	    productModel.setSupplierId(supplierModel.getSupplierId());

	    productDAO.saveOrUpdate(productModel);
		
		path=path+String.valueOf(productModel.getProductId())+".jpeg";
		File f=new File(path);
	
		MultipartFile filedet=productModel.getImage();
		
		if(!filedet.isEmpty())
		{
			try
			{
			  byte[] bytes=filedet.getBytes();
			  System.out.println(bytes.length);
			  FileOutputStream fos=new FileOutputStream(f);
          			BufferedOutputStream bs=new BufferedOutputStream(fos);
          			bs.write(bytes);
          			bs.close();
         			 System.out.println("File Uploaded Successfully");
			}
			catch(Exception e)
			{
				System.out.println("Exception Arised"+e);
			}
		}
		else
		{
			System.out.println("File is Empty not Uploaded");
			
	}
	}
	return "redirect:/product";

    }

	// ---------------------------------delete---------------------------------
    @RequestMapping(value = "/deleteproduct", method = RequestMethod.GET) //mapping for "/deleteproduct"
    public String deleteProduct(@RequestParam("productId") String productId) {
	productDAO.deleteProduct(productId);
	return "redirect:/product";
	}

    // ---------------------------------edit---------------------------------
    @RequestMapping(value = "/editproduct", method = RequestMethod.GET) //mapping for "/editproduct"
    public String editProduct(@RequestParam("productId") String productId, Model model) {
	log.debug("inside editProduct Controller");

	model.addAttribute("values", productDAO.getById(productId));
	model.addAttribute("productModel", new ProductModel());
	model.addAttribute("supplierModel", new SupplierModel());
	model.addAttribute("categoryModel", new CategoryModel());
	model.addAttribute("productlist", productDAO.getProductList()); //object for productList
	model.addAttribute("categorylist", categoryDAO.getCategoryList()); //object for categoryList 
	model.addAttribute("supplierlist", supplierDAO.getSupplierList()); //object for supplierList
	return "product";
    }
    
    
    
//    -------------------------------------------------USER COMMMON----------------------------------------------
      @RequestMapping(value = "/categorypage", method = RequestMethod.GET) //mapping for "/product"
    public String categoryPageUser(Model model, @RequestParam("categoryId") String categoryId) {
	model.addAttribute("values", productDAO.getProductListbycategory(categoryId));
	model.addAttribute("categoryList", categoryDAO.getCategoryList());
	
	return "categorypage";

    }

       
    
    @RequestMapping(value = "/productpage", method = RequestMethod.GET) //mapping for "/product"
    public String productPageUser(Model model, @RequestParam("productId") String productId) {

	model.addAttribute("productbyId", productDAO.getById(productId));
	model.addAttribute("productId", "productId");
	model.addAttribute("categoryList", categoryDAO.getCategoryList());
	model.addAttribute("productList", productDAO.getProductListbycategory(productDAO.getById(productId).getCategoryId()));
	
	if(productDAO.getById(productId).getProductQuantity()!=0){
	model.addAttribute( "stock","in-Stock" );
	}else{
		model.addAttribute( "stock","out of Stock" );	
	}
	return "productpage";
    }
    
   }
