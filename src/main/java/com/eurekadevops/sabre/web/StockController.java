package com.eurekadevops.sabre.web;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.eurekadevops.sabre.service.CategoryService;
import com.eurekadevops.sabre.service.ProductService;
import com.eurekadevops.sabre.service.StoreService;
import com.eurekadevops.sabre.service.SupplierService;
import com.eurekadevops.sabre.web.dto.ProductNewDto;

@Controller
@RequestMapping("/stock")
public class StockController {
	 @Autowired
	    private ProductService productService;
	    
	    @Autowired
	    private CategoryService categoryService;
	    
	    @Autowired
	    private SupplierService supplierService;
	    
	    @Autowired
	    private StoreService storeService;
	    
	    @ModelAttribute("section")
	    public String getSection() {
	        return "stock";
	    }

	    @GetMapping
	    public String products(Model model) {
	        model.addAttribute("products", productService.getAll());
	        return "stock";
	    }
	    
	    @GetMapping("/add")
	    public String showProductFromForAdd(Model model) {
	        model.addAttribute("product", productService.getNewDto());
	        return "product-form";
	    }
	    
	    @PostMapping("/add")
	    public String addProcess(@Valid @ModelAttribute(name = "product") ProductNewDto productNewDto, BindingResult bindingResult) {
	        if (bindingResult.hasErrors()) {
	            return "product-form";
	        } else {
	            productService.save(productNewDto);
	            return "redirect:/stock";
	        }
	    }

}
