package com.forEsther.controller;

import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.forEsther.service.SupplierService;
import com.forEsther.vo.suppliervo.SupplierVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RestController
@RequestMapping("/supplier")
@AllArgsConstructor
@Log4j
public class SupplierController {
	
	public SupplierService service;

	@GetMapping("/search")
	public ResponseEntity<SupplierVO> searchSupplier(@RequestParam("searchValue") String supplierName) {
		log.info("[GET/Controller] 구매처 검색 ...");
		log.info(service.searchSupplier(supplierName));
		return new ResponseEntity<>(service.searchSupplier(supplierName), HttpStatus.OK);
	}
}
