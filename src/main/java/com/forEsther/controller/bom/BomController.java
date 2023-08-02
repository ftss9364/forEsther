package com.forEsther.controller.bom;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.forEsther.service.bom.BomService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/bom/*")
@AllArgsConstructor
public class BomController {
	
	private BomService service;
	
	@GetMapping("/bomList")
	public void list(Model model) {
		log.info("list-----------------");
		service.getList().forEach(bom -> log.info(bom));
		model.addAttribute("list", service.getList());
		
	}
	
	@GetMapping("/bomGet")
	public void get(@RequestParam("product_name") String product_name, Model model) {
		log.info("get-------------------");
		model.addAttribute("bom", service.get(product_name));
	}

}
