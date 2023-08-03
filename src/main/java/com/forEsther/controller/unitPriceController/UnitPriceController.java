package com.forEsther.controller.unitPriceController;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.forEsther.service.unitpriceservice.UnitPriceService;
import com.forEsther.vo.commonvo.Criteria;
import com.forEsther.vo.commonvo.PageDTO;
import com.forEsther.vo.unitpricevo.UnitPriceVO;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/unitPrice/*")
@Log4j
public class UnitPriceController {
	
	@Autowired
	UnitPriceService service;
	
	@GetMapping("/unitPriceList")
	public void unitPriceList(Criteria cri, Model model) {
		log.info("unit price list.....................................");

		int total = service.getTotalCount(cri);
		
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		model.addAttribute("list", service.getList(cri));
		
	}
	
	@GetMapping("/get/{ucode}")
	public @ResponseBody UnitPriceVO get(@PathVariable("ucode") String unit_price_code) {
		log.info("unit price get.....................................");
		return service.get(unit_price_code);
	}
	
	
	@PostMapping("/register")
	public void register() {}
	
	
	@PostMapping("/autocomplete")
	public @ResponseBody Map<String, Object> autocomplete(@RequestParam Map<String, Object> paramMap) {
		
		List< Map<String, Object>> resultList = service.autocomplete(paramMap);
		
		return resultList;
	}
}
