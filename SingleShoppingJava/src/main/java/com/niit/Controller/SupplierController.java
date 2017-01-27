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
    // ---------------------------------supplier---------------------------------
	@RequestMapping(value = "/supplier", method = RequestMethod.GET)			//mapping for "/supplier"
	public ModelAndView supplierPage(Model m) {
		ModelAndView model = new ModelAndView("supplier", "supplierModel", new SupplierModel());
		model.addObject("list", supplierDAO.getSupplierList());
		return model;
	}

    // ---------------------------------add---------------------------------
	@RequestMapping(value = "/addsupplier", method = RequestMethod.GET)			//mapping for "addsupplier"
	public String addSupplier(SupplierModel supplierModel) {

		supplierDAO.addsupplier(supplierModel);
		return "redirect:/supplier";

	}

	// ---------------------------------delete---------------------------------
	@RequestMapping(value = "/deletesupplier", method = RequestMethod.GET)				//mapping for "/deletesupplier"
	public String deletesupplier(@RequestParam("supplierId") String supplierId) {

		supplierDAO.deletesupplier(supplierId);
		return "redirect:/supplier";

	}

    // ---------------------------------edit---------------------------------
    @RequestMapping(value = "/editsupplier", method = RequestMethod.GET) //mapping for "/editsupplier"
    public ModelAndView editSupplier(@RequestParam("supplierId") String supplierId) {
	ModelAndView model = new ModelAndView("supplier", "supplierModel", new SupplierModel());
	log.debug("inside editSupplier Controller");
	model.addObject("list", supplierDAO.getSupplierList());

	model.addObject("values", supplierDAO.getbyId(supplierId));
	return model;
    }

}
