package com.forEsther.controller.bom;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.forEsther.service.bom.BomService;
import com.forEsther.vo.bomvo.BomVO;
import com.forEsther.vo.bomvo.Criteria;
import com.forEsther.vo.itemvo.ItemVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RestController
@Log4j
@RequestMapping("/bom/*")
@AllArgsConstructor
public class BomRestController {
	
	private BomService service;
	
	@GetMapping("data")
	public List<BomVO> list() {
		return service.getListOrigin();
	}
}
