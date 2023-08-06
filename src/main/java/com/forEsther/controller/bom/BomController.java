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
import com.forEsther.vo.bomvo.BomVO;
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
		List<ItemVO> itemList = service.getItemList();

		if(service.getBomRegistration(bom_code).size() > 0) {
			List<BomRegistrationVO> bomItemList = service.getDetail(bom_code).getBom_register_vo();
			
			service.getItemList().forEach(item -> {
				bomItemList.forEach(bomItem ->{
					
					if(bomItem.getItem_code().equals(item.getItem_code())) {
						itemList.remove(item);
					}
					
				});		
			});
			model.addAttribute("bom", service.getDetail(bom_code));
		} else {
			model.addAttribute("bom", service.getBom(bom_code));
			
		}
		
		
		log.info(service.getDetail(bom_code));
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
	
	@PostMapping("/delete")
	@ResponseBody
	public ResponseEntity<Map<String, Object>> deleteBom(@RequestBody Map<String, Object> requestData) {
		
		log.info("---------------------------------");
		
		service.removeBomToBomRegistration((String)requestData.get("bomCode"));
		service.removeBom((String)requestData.get("bomCode"));
		
		Map<String, Object> response = new HashMap<>();
		response.put("success", true);
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
	
	@PostMapping("/search-product")
	@ResponseBody
	public ResponseEntity<Map<String, Object>> searchProduct(@RequestBody Map<String, Object> requestData) {
		String itemName = (String)requestData.get("itemName");
		itemName = "%"+itemName+"%";
		
		List<ItemVO> itemList = service.searchProduct(itemName);
		
		Map<String, Object> response = new HashMap<>();
		response.put("success", true);
		response.put("items", itemList);
		
		return ResponseEntity.ok(response);
	}
	
	@PostMapping("/new-bom")
	public ResponseEntity<Map<String, Object>> newBom(@RequestBody Map<String, Object> requestData) {
		String productName = (String)requestData.get("productName");
		String itemCode = (String)requestData.get("itemCode");
		String newBomCode = "B-"+itemCode;
		
		List<BomVO> bomList = service.getBomList();
		boolean bomCheck = true;
		int bomVersion = 0;
		for(int i = 0; i < bomList.size(); i++) {
			String bomItemCode = bomList.get(i).getBom_code().substring(2,7);
			if(itemCode.equals(bomItemCode)) {
				bomCheck = false;
				if(bomVersion == 0) {
					bomVersion = Integer.parseInt(bomList.get(i).getBom_code().substring(8,10)) + 1; 					
				} else {
					if(bomVersion > Integer.parseInt(bomList.get(i).getBom_code().substring(8,10))) {
					} else {
						bomVersion = Integer.parseInt(bomList.get(i).getBom_code().substring(8,10)) + 1; 											
					}
				}
			}
		}

		BomVO bomVo = new BomVO();
		bomVo.setProduct_name(productName);
		
		if(bomVersion == 0) {
			newBomCode = newBomCode+"-01";
		} else {
			if(bomVersion>9) {
				newBomCode = newBomCode+"-"+bomVersion;				
			}else {
				newBomCode = newBomCode+"-0"+bomVersion;								
			}
		}
		bomVo.setBom_code(newBomCode);
		service.registerBom(bomVo);
		
		log.info(bomVo);
		
		Map<String, Object> response = new HashMap<>();
		response.put("success", true);
		response.put("newBomCode", newBomCode);
		
		return ResponseEntity.ok(response);
	}
	
	@PostMapping("/register")
	@ResponseBody
	public void registerBom(@RequestBody List<Map<String, String>> rowDataList) {
		List<BomRegistrationVO> originList = service.getBomRegistration(rowDataList.get(0).get("bomCode"));
		
		if(rowDataList.get(0).get("itemCode").equals("null")) {
			
			service.removeBomToBomRegistration(rowDataList.get(0).get("bomCode"));
			service.removeBom(rowDataList.get(0).get("bomCode"));
			
		} else {
			originList.forEach(origin -> {
				boolean oldCheck = true;
				for(int i=0; i < rowDataList.size(); i++) {
					if(rowDataList.get(i).get("itemCode").equals(origin.getItem_code())) {
						oldCheck = false;
					}
				}
				if(oldCheck) {
					//삭제
					service.removeBomRegistration(origin.getBom_registration_code());
				}
			});
			
			rowDataList.forEach(rowData -> {
				String itemCode = rowData.get("itemCode");
				String itemName = rowData.get("itemName");
				int itemRequiredQuantity = Integer.parseInt(rowData.get("itemRequiredQuantity"));
				boolean newCheck = true;
				for(int i = 0; i < originList.size(); i++) {
					
					if(originList.get(i).getItem_code().equals(itemCode)) {
						newCheck = false;
						if(originList.get(i).getRequired_quantity() != itemRequiredQuantity) {
							//log.info(itemRequiredQuantity);
							service.modifyBomRegistration(itemRequiredQuantity, originList.get(i).getBom_registration_code());
						}
					}
				}
				if(newCheck) {
					//추가
					String newRegCode = service.getBomregCount();
					int temp = Integer.parseInt(newRegCode.substring(3));
					temp++;
					if(temp>99) {
						newRegCode = "BR-" + temp;
					} else {
						newRegCode = "BR-0" + temp;					
					}
					
					BomRegistrationVO bom_reg_vo = new BomRegistrationVO();
					bom_reg_vo.setBom_code(rowDataList.get(0).get("bomCode"));
					bom_reg_vo.setBom_registration_code(newRegCode);
					bom_reg_vo.setItem_code(itemCode);
					bom_reg_vo.setRequired_quantity(itemRequiredQuantity);
					
					service.registerBomRegistration(bom_reg_vo);
					
					log.info(newRegCode);
				}
				
			});
			
		}

	}

	
}
