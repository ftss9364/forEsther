package com.forEsther.mapper.seriallotmapper;

import static org.junit.Assert.*;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Calendar;
import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.forEsther.vo.seriallotvo.SerialLotVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class SerialLotMapperTests {
	@Autowired
	private SerialLotMapper mapper;
	
//	// insert Test
//	@Test
//	public void testInsert() throws Exception {
//		
//		SerialLotVO serial_lot = new SerialLotVO();
//		serial_lot.setItem_code("RM-001");
//		
//		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
//		Date date = format.parse("2024-08-01");
//		
//		
//		// 시간 정보를 없애기 위해 java.sql.Date로 변환하여 저장
//	    java.sql.Date sqlDate = new java.sql.Date(date.getTime());
//	    serial_lot.setExpiration_date(sqlDate);
//		
//		log.info("set date....");
//		log.info("date : " + date);
//		
//		String serial_lot_code = serial_lot.getItem_code() +"-"+ new SimpleDateFormat("yyyyMMdd").format(date);
//		
//		serial_lot.setSerial_lot_code(serial_lot_code);
//		serial_lot.setItem_name("돼지고기 앞다리");
//		serial_lot.setStock_quantity(500);
//		serial_lot.setSupplier("SP-001");
//		serial_lot.setRelated_invoice("구매전표코드");
//		
//		log.info(serial_lot);
//		////////////
//		mapper.insert(serial_lot);
//		log.info("finish....................");
//	}
	
//	// read Test
//	@Test
//	public void testRead() {
//		log.info(mapper.read("RM-001-20240801"));
//	}
	
//	// update Test
//	@Test
//	public void testUpdate() {
//		SerialLotVO serial_lot = mapper.read("RM-001-20240801");
//		serial_lot.setStock_quantity(80);
//		mapper.update(serial_lot);
//		log.info(mapper.read("RM-001-20240801"));
//	}
	
//	// getList Test
//	@Test
//	public void testgetList() {
//		log.info(mapper.getList());
//		
//	}
	
//	// itemSearch Test
//	@Test
//	public void testItemSearch() {
//		log.info(mapper.itemSearch("고기"));
//	}

}
