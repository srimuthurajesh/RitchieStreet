package com.niit.Controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.DAO.CategoryDAO;
import com.niit.DAO.CategoryDAOImpl;
import com.niit.DAO.ProductDAO;
import com.niit.DAO.SupplierDAO;
import com.niit.DAO.SupplierDAOImpl;
import com.niit.entityModel.CategoryModel;
import com.niit.entityModel.ProductModel;
import com.niit.entityModel.SupplierModel;

@Controller
public class ProductController {
    Logger log = LoggerFactory.getLogger(ProductController.class);
    @Autowired
    private CategoryDAO categoryDAO;

    @Autowired
    private ProductDAO productDAO;

    @Autowired
    private SupplierDAO supplierDAO;


    // ---------------------------------product---------------------------------
    @RequestMapping(value = "/product", method = RequestMethod.GET) //mapping for "/product"
    public String productPage(Model model) {

	model.addAttribute("productModel", new ProductModel());
	model.addAttribute("supplierModel", new SupplierModel());
	model.addAttribute("categoryModel", new CategoryModel());

	model.addAttribute("productlist", productDAO.getProductList()); //object for productList
	model.addAttribute("categorylist", categoryDAO.getCategoryList()); //object for categoryList
	model.addAttribute("supplierlist", supplierDAO.getSupplierList()); //object for supplierList
	return "product";

	}

    // ---------------------------------add---------------------------------
    @RequestMapping(value = "/addproduct", method = RequestMethod.GET) //mapping for "/addproduct"
    public String addcproduct(@ModelAttribute("productModel") ProductModel productModel, Model m) {
		productDAO.addProduct(productModel);
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
	CategoryDAO categoryDAO = new CategoryDAOImpl();
	SupplierDAO supplierDAO = new SupplierDAOImpl();

	model.addAttribute("values", productDAO.getById(productId));
	model.addAttribute("productModel", new ProductModel());
	model.addAttribute("productlist", productDAO.getProductList()); //object for productList
	model.addAttribute("categorylist", categoryDAO.getCategoryList()); //object for categoryList
	model.addAttribute("supplierlist", supplierDAO.getSupplierList()); //object for supplierList
	return "product";
    }

}
