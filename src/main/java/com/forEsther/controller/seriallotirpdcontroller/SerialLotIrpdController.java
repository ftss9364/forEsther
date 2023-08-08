package com.forEsther.controller.seriallotirpdcontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.forEsther.service.seriallotirpdservice.SerialLotIrpdService;
import com.forEsther.vo.commonvo.Criteria;
import com.forEsther.vo.commonvo.PageDTO;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/serialLot")
public class SerialLotIrpdController {
	@Autowired
	private SerialLotIrpdService service;
	
	// 전체조회
	@GetMapping("/serialLotIrpdList")
	public void getList(Criteria cri, Model model) {
		log.info("serialLotIrpdList.........");
		// DB의 전체 데이터 개수 가져오기 위한 변수 선언
		int total = service.getTotal(cri);
		
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
	
	// 상세조회
	@GetMapping("/serialLotIrpdGet")
	public void get(@RequestParam("serial_lot_code") String serial_lot_code, Model model) {
		model.addAttribute("serial_lot_code", serial_lot_code);
		log.info("serialLotIrpdGetDetail......");
	}
	
}
