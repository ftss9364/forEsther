package com.forEsther.controller.bom;

import org.springframework.http.ResponseEntity;
import org.springframework.security.access.method.P;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.forEsther.service.bom.BomService;
import com.forEsther.vo.itemvo.ItemVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/bom/*")
@AllArgsConstructor
public class BomController {
	
	private BomService service;
	
	@GetMapping("/list")
	public String list(Model model) {
		log.info("list-----------------");
		model.addAttribute("list", service.getList());
		model.addAttribute("item_list", service.getBomItemList());
		return "bom/bomList";
	}
	
	@PostMapping("/list")
	public String search(@RequestParam("product_name") String product_name, Model model) {
		log.info("search-----------------------");
		product_name = "%" + product_name + "%";
		model.addAttribute("list", service.get(product_name));
		model.addAttribute("item_list", service.getBomItemList());
		
		return "bom/bomList";
	}
	
	@GetMapping("/get")
	public String get(@RequestParam("bom_code") String bom_code, Model model) {
		model.addAttribute("bom", service.getDetail(bom_code));
		model.addAttribute("item_list", service.getItemList());
		
	
		return "bom/bomGet";
	}

	
}
