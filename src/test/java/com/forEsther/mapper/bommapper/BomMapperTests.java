package com.forEsther.mapper.bommapper;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml") //설정파일 위치
@Log4j
public class BomMapperTests {

	@Autowired
	private BomMapper mapper;
	
	@Test
	public void test() {
		boolean check = true;
		String temp = "aa";
		mapper.getList().forEach(bom -> {
			log.info(bom.getBom_code() + bom.getProduct_name());
		});
	
	}

}
