package com.niit.Controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.DAO.SupplierDAO;
import com.niit.entityModel.SupplierModel;

@Controller
public class SupplierController {
Logger log= LoggerFactory.getLogger(SupplierController.class);

@Autowired
SupplierDAO supplierDAO;

//------------------------------------------------ADMIN--------------------------------------------------

// ---------------------------------supplier---------------------------------
	@RequestMapping(value = "/supplier", method = RequestMethod.GET)			//mapping for "/supplier"
	public ModelAndView supplierPage(Model m) {
		log.debug("inside supplier controller");
		ModelAndView model = new ModelAndView("admin_supplier", "supplierModel", new SupplierModel());
		model.addObject("list", supplierDAO.getSupplierList());
	model.addObject("page_name", "Supplier");
	log.debug("leaving supplier controller");
		return model;
	}

    // ---------------------------------add supplier---------------------------------
	@RequestMapping(value = "/addsupplier", method = RequestMethod.GET)			//mapping for "addsupplier"
	public String addSupplier(SupplierModel supplierModel) {
		log.debug("inside addsupplier controller");
		supplierDAO.addsupplier(supplierModel);
		log.debug("leaving addsupplier controller");
		return "redirect:/supplier";

	}

	// ---------------------------------delete supplier---------------------------------
	@RequestMapping(value = "/deletesupplier", method = RequestMethod.GET)				//mapping for "/deletesupplier"
	public String deletesupplier(@RequestParam("supplierId") String supplierId) {
		log.debug("inside delete supplier controller");
		supplierDAO.deletesupplier(supplierId);
		log.debug("leaving delte supplier controller");
		return "redirect:/supplier";

	}

    // ---------------------------------edit supplier---------------------------------
    @RequestMapping(value = "/editsupplier", method = RequestMethod.GET) //mapping for "/editsupplier"
    public ModelAndView editSupplier(@RequestParam("supplierId") String supplierId) {
    	log.debug("inside editsupplier controller");
    	ModelAndView model = new ModelAndView("admin_supplier", "supplierModel", new SupplierModel());
	log.debug("inside editSupplier Controller");
	model.addObject("list", supplierDAO.getSupplierList());

	model.addObject("values", supplierDAO.getbyId(supplierId));
	model.addObject("page_name", "Supplier");
	log.debug("leacing edit supplier controller");
	return model;
    }

    
}
