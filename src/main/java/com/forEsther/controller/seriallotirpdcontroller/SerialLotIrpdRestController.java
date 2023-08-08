package com.forEsther.controller.seriallotirpdcontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.forEsther.service.seriallotirpdservice.SerialLotIrpdService;
import com.forEsther.vo.commonvo.Criteria;
import com.forEsther.vo.commonvo.PageDTO;
import com.forEsther.vo.seriallotirpdvo.SerialLotIrpdVO;

import lombok.extern.log4j.Log4j;

@RestController
@Log4j
@RequestMapping("/rest")
public class SerialLotIrpdRestController {
	@Autowired
	private SerialLotIrpdService service;
	
	// 전체조회
	@GetMapping("/serialLotIrpdList")
	public ResponseEntity<List<SerialLotIrpdVO>> getList(Criteria cri) {
		log.info("getList.........");
		return new ResponseEntity<>(service.getList(cri), HttpStatus.OK);
	}
	
	// 상세조회
	@GetMapping("/serialLotIrpdGet/{serial_lot_code}")
	public ResponseEntity<List<SerialLotIrpdVO>> get(@PathVariable("serial_lot_code") String serial_lot_code) {
		log.info("getdetail..........." + serial_lot_code);
		return new ResponseEntity<List<SerialLotIrpdVO>>(service.get(serial_lot_code), HttpStatus.OK);
	}
}
