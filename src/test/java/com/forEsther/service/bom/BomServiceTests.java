package com.forEsther.service.bom;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.forEsther.mapper.bommapper.BomMapperTests;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml") //설정파일 위치
@Log4j
public class BomServiceTests {

	@Autowired
	private BomService service;
	
	@Test
	public void testGetList() {
		service.getList().forEach(bom -> log.info(bom));
	}
	
//	@Test
//	public void testGet() {
//		String menu = "%김치찌개%";
//		service.get(menu).forEach(bom -> log.info(bom));
//	}

	
//	@Test
//	public void testSerch() {
//		String menu = "%김치찌개%";
//		
//		log.info(service.getCount(menu) + "-------------------------------------");
//		
//	}
}
