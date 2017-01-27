package com.niit.Controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.DAO.CategoryDAO;
import com.niit.entityModel.CategoryModel;

@Controller
public class CategoryController {
    @Autowired(required = true)
    private CategoryDAO categoryDAO;


    Logger log = LoggerFactory.getLogger(CategoryController.class); //logger and loogerfactory class declared for this Class

	// ---------------------------------category-------------------------------
	@RequestMapping(value = "/category", method = RequestMethod.GET)	//mapping for "/category"
	public ModelAndView categoryPage() {
log.debug("inside category controller");		//performing a logger debug
	ModelAndView model = new ModelAndView("category", "categoryModel", new CategoryModel()); //adding a page to ModelAndView with empty constructor
		model.addObject("list", categoryDAO.getCategoryList());						//adding a Object to value "list"
		return model;
		}

	
    // ---------------------------------add----------------------------------
	@RequestMapping(value = "/addcategory", method = RequestMethod.GET)		//mapping for "/addcategory"
	public String addCategory(CategoryModel categoryModel) {
		log.debug("inside addcategory Controller");
		categoryDAO.addCategory(categoryModel);
		return "redirect:/category";
	}

	// ---------------------------------delete---------------------------------
	@RequestMapping(value = "/deletecategory", method = RequestMethod.GET)		//mapping for "/deletecategory"
	public String deleteCategory(@RequestParam("categoryId") String categoryId) {
		log.debug("inside deletecategory Controller");
		categoryDAO.deleteCategory(categoryId);
		return "redirect:/category";

	}

	// ---------------------------------edit---------------------------------
	@RequestMapping(value = "/editcategory", method = RequestMethod.GET)		//mapping for "/editcategory"
	public ModelAndView editCategory(@RequestParam("categoryId") String categoryId) {
		ModelAndView model = new ModelAndView("category", "categoryModel", new CategoryModel());
		log.debug("inside editcategory Controller");
		model.addObject("list", categoryDAO.getCategoryList());

	model.addObject("values", categoryDAO.getById(categoryId));

		return model;
	}



}
