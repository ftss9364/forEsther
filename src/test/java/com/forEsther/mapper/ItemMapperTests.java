package com.forEsther.mapper;

import static org.junit.Assert.*;

import java.sql.SQLException;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ItemMapperTests {
//
	@Autowired
	private ItemMapper mapper;
	
	@Test
	public void test() {
		
//		mapper.getItemList().forEach(item -> log.info(item));
		//mapper.searchItem("품목명", "P-002");
	}

}
