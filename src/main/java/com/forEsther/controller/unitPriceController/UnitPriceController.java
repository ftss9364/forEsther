package com.forEsther.controller.unitPriceController;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.file.Files;
import java.util.Base64;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.Servlet;
import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.Base64Utils;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.forEsther.service.unitpriceservice.UnitPriceService;
import com.forEsther.vo.commonvo.Criteria;
import com.forEsther.vo.commonvo.PageDTO;
import com.forEsther.vo.quotationfilevo.QuotationFileVO;
import com.forEsther.vo.unitpricevo.UnitPriceVO;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/unitPrice/*")
@Log4j
public class UnitPriceController {

	@Autowired
	UnitPriceService service;

	@Autowired
	ServletContext servletContext;

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
	
	
	  @GetMapping("/getThumbnail/{ucode}") public ResponseEntity<byte[]>

	getThumbnail(@PathVariable("ucode") String unit_price_code, Model model) {
	  log.info("getThumbnail.....................................");
	  
	  String path = makepath() + File.separator; String file_name =
	  service.getThumbnail(unit_price_code);
	  
	  
	  if(file_name == null) { 
		  log.info("file not exists");
		  return null; 
	  }
	  
	  
	  File file = new File(path + file_name);
	  
	  log.info(file);
	  
	  ResponseEntity<byte[]> result = null;
	  
	  try { HttpHeaders header = new HttpHeaders();
	  
	  header.add("Content-Type", Files.probeContentType(file.toPath()));
	  header.set("file-name", file_name);
	  
	  byte[] byteFile = FileCopyUtils.copyToByteArray(file); byte[] base64 =
	  Base64.getEncoder().encode(byteFile);
	  
	  log.info("===========================================");
	  log.info(
	  Files.probeContentType(file.toPath()));
	  
	  result = new ResponseEntity<>(base64, header, HttpStatus.OK); 

	  } catch (Exception e) { 
		  e.printStackTrace(); 
	  }
	  
		return result;
	}

	@GetMapping(value = "/download/{ucode}", produces = MediaType.APPLICATION_OCTET_STREAM_VALUE)
	@ResponseBody
	public ResponseEntity<Resource> downloadFile(@PathVariable("ucode") String unit_price_code) {
		log.info("================================download file===========================================");
		
		String path = makepath() + File.separator; 
		
		log.info(unit_price_code);
		String file_name = service.getThumbnail(unit_price_code);
		
		log.info(file_name);
		
		FileSystemResource resource = new FileSystemResource(path + file_name);
		
		log.info(resource);
		
		HttpHeaders headers = new HttpHeaders();
		
		try {
			headers.add("Content-Disposition", "attachment; filename=" + 
		new String(file_name.getBytes("UTF-8"), "ISO-8859-1"));
			
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		return new ResponseEntity<Resource>(resource, headers, HttpStatus.OK);	
	}
	
	@GetMapping("/getChart/{icode}")
	public @ResponseBody Map<String, Object> getChart(@PathVariable("icode") String item_code) {
		log.info("getChart=========================================");
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		result.put("result", service.getChart(item_code));
		
		return result;
	}
		

	@PostMapping("/register")

	public void register() {}
	
	
	/*
	 * @PostMapping("/autocomplete") public @ResponseBody Map<String, Object>
	 * autocomplete(@RequestParam Map<String, Object> paramMap) {
	 * 
	 * List< Map<String, Object>> resultList = service.autocomplete(paramMap);
	 * 
	 * return resultList; }
	 */

	public String register(MultipartFile uploadFile, UnitPriceVO unitPrice, RedirectAttributes rttr) {
		if (!uploadFile.isEmpty()) {

			String path = makepath();

			log.info("path=========================================");
			log.info(path);

			File saveFile = new File(path, uploadFile.getOriginalFilename());

			try {
				uploadFile.transferTo(saveFile);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}

			QuotationFileVO file = new QuotationFileVO();

			file.setSerial_lot_code(unitPrice.getSerial_lot_code());
			file.setFile_format(uploadFile.getContentType());
			file.setFile_name(uploadFile.getOriginalFilename());
			file.setFile_size(uploadFile.getSize());
			file.setFile_path(path);

			if (service.registerWithFile(unitPrice, file) == 0) {
				log.info(saveFile.delete());
			} else {
				log.info(file);
			}

		} else {
			log.info("no file");
			service.register(unitPrice);
		}
		
		return "redirect:/unitPrice/unitPriceList";
	}

	@PostMapping("/autocomplete")
	public @ResponseBody Map<String, Object> autocomplete(@RequestParam Map<String, Object> paramMap) {

		List<Map<String, Object>> resultList = service.autocomplete(paramMap);
		paramMap.put("resultList", resultList);

		return paramMap;
	}

	public String makepath() {
		String path = servletContext.getRealPath("/") + File.separator + "resources" + File.separator + "assets"
				+ File.separator + "img" + File.separator + "quotationImg";

		return path;
	}
}
