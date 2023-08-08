package com.forEsther.controller;

import java.util.List;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.forEsther.service.ItemService;
import com.forEsther.vo.itemvo.ItemVO;
import com.forEsther.vo.jsonitemvo.JsonItemVO;

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
		log.info("[GET/Controller] 전체 품목 리스트 조회 ...");
		model.addAttribute("data", service.getItemList());
		return "pages/item/itemList";
	}
	
	@GetMapping("/search")
	public String searchItem(@RequestParam("searchType") String searchType, 
			@RequestParam("searchValue") String searchValue, Model model) {
		log.info("[GET/Controller] 품목 검색 ...");
		model.addAttribute("data", service.searchItem(searchType, searchValue));
		return "pages/item/itemList";
	}

}


