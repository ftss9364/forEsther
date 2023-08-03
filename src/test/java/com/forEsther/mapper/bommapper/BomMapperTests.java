package com.forEsther.mapper.bommapper;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.forEsther.vo.bomregistrationvo.BomRegistrationVO;
import com.forEsther.vo.bomvo.BomVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml") //설정파일 위치
@Log4j
public class BomMapperTests {

	@Autowired
	private BomMapper mapper;
	
//	@Test
//	public void testList() {
//		mapper.getList().forEach(bom -> {
//			log.info(bom);
//		});
//	
//	}
	
//	@Test
//	public void testCount() {
//		String menu = "%김치찌개%";
//		int a = mapper.getCount(menu);
//		log.info(a+"----------------------------------");		
//	}

//	@Test
//	public void testSearch() {
//		String menu = "%김치찌개%";		
//		mapper.search(menu).forEach(bom -> log.info(bom));
//	}
	
//	@Test
//	public void testInsertBom() {
//		BomVO bom = new BomVO();
//		bom.setBom_code("B-P-006-01");
//		bom.setProduct_name("김치찜");
//		
//		mapper.insert_bom(bom);
//		
//		log.info(bom);
//	}
	
//	@Test
//	public void testInsertBomReg() {
//		BomRegistrationVO bomreg = new BomRegistrationVO();
//		String bomreg_code = mapper.getBomregCount().substring(3, 6);
//		int temp = Integer.parseInt(bomreg_code);
//		temp += 1;
//		
//		if(temp < 100) {
//			bomreg_code = "BR-0" + temp;
//		} else {
//			bomreg_code = "BR-" + temp;
//		}
//
//		bomreg.setBom_code("B-P-006-01");
//		bomreg.setBom_registration_code(bomreg_code);
//		bomreg.setItem_code("RM-001");
//		bomreg.setRequired_quantity(50);
//		
//		mapper.insert_bom_registration(bomreg);
//		
//		log.info(bomreg);
//	}
	
//	@Test
//	public void testDeleteBomReg(){
//		log.info(mapper.delete_bom_to_bom_registration("B-P-006-01"));
//		log.info(mapper.delete_bom_registration("BR-042"));
//	}

//	@Test
//	public void testDeleteBom() {
//		log.info(mapper.delete_bom("B-P-006-01"));
//		
//	}
	
	@Test
	public void testItemList() {
		mapper.getItemList().forEach(item -> log.info(item));
	}
	
}
