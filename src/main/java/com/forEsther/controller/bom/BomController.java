package com.forEsther.controller.bom;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.http.ResponseEntity;
import org.springframework.security.access.method.P;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.forEsther.service.bom.BomService;
import com.forEsther.vo.bomregistrationvo.BomRegistrationVO;
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
		List<BomRegistrationVO> bomItemList = service.getDetail(bom_code).getBom_register_vo();
		List<ItemVO> itemList = service.getItemList();
				
		service.getItemList().forEach(item -> {
			bomItemList.forEach(bomItem ->{
				
				if(bomItem.getItem_code().equals(item.getItem_code())) {
					itemList.remove(item);
				}
				
			});		
		});
		
		
		model.addAttribute("bom", service.getDetail(bom_code));
		model.addAttribute("item_list", itemList);
		
	
		return "bom/bomGet";
	}
	
	@PostMapping("/plus")
    @ResponseBody
    public ResponseEntity<Map<String, Object>> moveRow(@RequestParam String itemCode) {

		
        Map<String, Object> response = new HashMap<>();
        response.put("success", true);
        response.put("item", service.getItem(itemCode));
        log.info(response);
        return ResponseEntity.ok(response);
    }
	
	@PostMapping("/search-item")
	@ResponseBody
	public ResponseEntity<Map<String, Object>> searchItem(@RequestBody Map<String, Object> requestData) {
		String itemName = (String)requestData.get("itemName");
		List<String> ItemCodeArr = (List<String>)requestData.get("ItemCodeArr");
		itemName = "%"+itemName+"%";
		
		List<ItemVO> itemList = service.searchItem(itemName);
		
		log.info(ItemCodeArr);
		
		service.searchItem(itemName).forEach(item -> {
			ItemCodeArr.forEach(bomItem ->{
				
				if(bomItem.equals(item.getItem_code())) {
					itemList.remove(item);
				}
				
			});		
		});
		
		Map<String, Object> response = new HashMap<>();
		response.put("success", true);
		response.put("items", itemList);
		
		return ResponseEntity.ok(response);
	}
	
}
