package com.forEsther.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.forEsther.service.ItemService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/item")
@AllArgsConstructor 
@Log4j
public class ItemController {
	private ItemService service;

	@GetMapping("/list")
	public String getItemList(Model model) {
		log.info("[GET/Controller] getItemList ...");
		model.addAttribute("data", service.getItemList());
		return "pages/itemList";
	}
}
