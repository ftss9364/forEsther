package com.forEsther.mapper.unitpricemapper;

import static org.junit.Assert.*;

import java.util.HashMap;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.forEsther.vo.commonvo.Criteria;
import com.forEsther.vo.unitpricevo.UnitPriceVO;

import lombok.extern.log4j.Log4j;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class UnitPriceMapperTests {

	@Autowired
	UnitPriceMapper mapper;
	
//	@Test
//	public void insertTest() {
//		
//		log.info("--------------------------test----------------------------------------------------");
//		UnitPriceVO vo = new UnitPriceVO();
//		
//		vo.setItem_name("testitem");
//		vo.setPurchase_price(33333);
//		vo.setSelling_price(55555);
//		vo.setStandard_cost(66666);
//		vo.setSerial_lot_code("test-001");
//		
//		mapper.insert(vo);
//	}
	
//	@Test
//	public void readTest() {
//		log.info("-----------------------------test-----------------------------------------");
//		
//		log.info(mapper.read("UP-001"));
//
//	}
	
	
//	@Test
//	public void countTest() {
//		Criteria cri = new Criteria();
//		cri.setType("N");
//		cri.setKeyword("");
//		log.info("-----------------------------------------------------------------------------");
//		
//		log.info(mapper.getTotalCount(cri));
//	}
//	
	
	
	/*
	 * @Test public void listTest() { Criteria cri = new Criteria();
	 * cri.setType("N"); cri.setKeyword(""); cri.setAmount(15); cri.setPageNum(2);
	 * log.info(
	 * "-----------------------------------------------------------------------------"
	 * );
	 * 
	 * mapper.getList(cri).forEach(price -> log.info(price)); }
	 * 
	 */
	
	
//	private Map<String, Object>paramMap = new HashMap<>();
//	
//	@Test
//	public void autocompleteTest() {
//
//		
//		paramMap.put("value", "RM-002-20231231");
//		mapper.autocomplete(paramMap).forEach(word -> log.info(word));
//	}
//	
	
	@Test
	public void chartTest() {
		mapper.getChart("RM-010").forEach(item -> log.info(item));
	}
	
	
	
	
	
	
	
	
	
}
