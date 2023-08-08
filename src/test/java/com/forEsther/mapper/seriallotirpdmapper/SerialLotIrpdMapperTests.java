package com.forEsther.mapper.seriallotirpdmapper;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.forEsther.vo.seriallotirpdvo.SerialLotIrpdVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class SerialLotIrpdMapperTests {
	@Autowired
	private SerialLotIrpdMapper mapper;
	
//	// insert
//	@Test
//	public void testInsert() {
////		serial_lot_irpd_code, serial_lot_code, item_name, irpd_category, variation_quantity,
////		stock_quantity, related_invoice, customer_name
//		
//		SerialLotIrpdVO serialLotIrpd = new SerialLotIrpdVO();
//		serialLotIrpd.setSerial_lot_irpd_code("IRPD-006");
//		serialLotIrpd.setSerial_lot_code("RM-002-20231231");
//		serialLotIrpd.setItem_name("소고기 불고기용");
//		serialLotIrpd.setIrpd_category("입고");
//		serialLotIrpd.setVariation_quantity(30);
//		serialLotIrpd.setStock_quantity(90);
//		serialLotIrpd.setRelated_invoice("구매전표코드");
//		serialLotIrpd.setCustomer_name("SP001");
//		
//		log.info("insert.........." + serialLotIrpd);
//		mapper.insert(serialLotIrpd);
//		log.info("finish..........");
//		
//	}
	
//	// read
//	@Test
//	public void testRead() {
//		log.info(mapper.read("RM-001-20240801"));
//		
//	}
	
//	// getList
//	@Test
//	public void testGetList() {
//		log.info(mapper.getList());
//	}

}
