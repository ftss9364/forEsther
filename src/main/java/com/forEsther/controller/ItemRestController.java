package com.forEsther.controller;

import java.util.List;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.forEsther.service.ItemService;
import com.forEsther.vo.itemvo.ItemVO;
import com.forEsther.vo.jsonitemvo.JsonItemVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RestController
@RequestMapping("/item")
@AllArgsConstructor
@Log4j
public class ItemRestController {
	private ItemService service;

	@GetMapping("/detail")
	public ItemVO getItemDetail(@RequestParam("itemCode") String itemCode) {
		log.info("✅ [GET/Controller] 품목 상세 조회 ...");
		return service.getItemDetail(itemCode);
	}
	
	@PostMapping("/register")
	public ResponseEntity<String> registerItem (@RequestBody JsonItemVO item ) {
		log.info("[POST/Controller] 품목 등록 ...");
		log.info(item);
		int result = service.registerItem(item);
		return result == 1 ? new ResponseEntity<String>("success", HttpStatus.OK)
                : new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@PostMapping("/remove")
	public ResponseEntity<String> removeItem(@RequestParam("itemCode") String itemCode) {
		log.info("[POST/Controller] 품목 삭제 ...");
		log.info(itemCode);
		int result = service.removeItem(itemCode);
		return result == 1 ? new ResponseEntity<String>("success", HttpStatus.OK)
                : new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
//	@GetMapping("/modify")
//	public ItemVO getItemModify(@RequestParam("itemCode") String itemCode) {
//		log.info("✅ [GET/Controller] 수정할 상품 조회 ...");
//		return service.getItemDetail(itemCode);
//	}
}
