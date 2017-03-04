package com.niit.Controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.DAO.CategoryDAO;
import com.niit.entityModel.CategoryModel;
import com.niit.entityModel.ProductModel;

@Controller
public class CategoryController {
    @Autowired(required = true)
    private CategoryDAO categoryDAO;


    Logger log = LoggerFactory.getLogger(CategoryController.class); //logger and logerfactory class declared for this Class

    
	// ---------------------------------category page-------------------------------
	@RequestMapping(value = "/category", method = RequestMethod.GET)	
	public ModelAndView categoryPage() {
log.debug("inside category controller");		//performing a logger debug
	ModelAndView model = new ModelAndView("admin_category", "categoryModel", new CategoryModel()); 	//adding a page to ModelAndView with empty constructor
//		model.addObject("list", categoryDAO.getCategoryList());										//adding a Object to value "list"

		 ArrayList<CategoryModel> list=(ArrayList<CategoryModel>)categoryDAO.getCategoryList();
	  		Gson gson= new Gson();
	  		model.addObject("supplierList", gson.toJson(list));
	  model.addObject("page_name", "Category");
	log.debug("leaving category controller");
		return model;
		}

	
    // ---------------------------------add category----------------------------------
	@RequestMapping(value = "/addcategory", method = RequestMethod.GET)		//mapping for "/addcategory"
	public String addCategory(CategoryModel categoryModel) {
		log.debug("inside addcategory Controller");
		categoryDAO.addCategory(categoryModel);
		log.debug("leaving addcategorycontroller");
		return "redirect:/category";
	}

	// ---------------------------------delete category---------------------------------
	@RequestMapping(value = "/deletecategory", method = RequestMethod.GET)		//mapping for "/deletecategory"
	public String deleteCategory(@RequestParam("categoryId") String categoryId) {
		log.debug("inside deletecategory Controller");
		categoryDAO.deleteCategory(categoryId);
		log.debug("leaving deletecategory controller");
		return "redirect:/category";
	}

	
	// ---------------------------------edit category---------------------------------
	@RequestMapping(value = "/editcategory", method = RequestMethod.GET)		//mapping for "/editcategory"
	public ModelAndView editCategory(@RequestParam("categoryId") String categoryId) {
		ModelAndView model = new ModelAndView("admin_category", "categoryModel", new CategoryModel());
		log.debug("inside editcategory Controller");
	//	model.addObject("list", categoryDAO.getCategoryList());

		 ArrayList<CategoryModel> list=(ArrayList<CategoryModel>)categoryDAO.getCategoryList();
	  		Gson gson= new Gson();
	  		model.addObject("list", gson.toJson(list));

		model.addObject("values", categoryDAO.getById(categoryId));
	log.debug("leaving editcategory controller");
		return model;
	}
}
