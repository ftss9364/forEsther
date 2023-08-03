package com.forEsther.controller.seriallotcontroller;

import static org.junit.Assert.*;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultActions;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.WebApplicationContext;

import com.forEsther.service.seriallotservice.SerialLotService;
import com.forEsther.vo.seriallotvo.SerialLotVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({
	"file:src/main/webapp/WEB-INF/spring/root-context.xml",
	"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"
})
@Log4j
public class SerialLotControllerTests {
	@Autowired
	private WebApplicationContext ctx;
	
	@Autowired
	private SerialLotService service;
	
	private MockMvc mockMvc;
	
	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	
//	// 전체 목록 테스트
//	@Test
//	public void testgetList() throws Exception {
//		log.info(mockMvc.perform(MockMvcRequestBuilders.get("/serialLot/serialLotList"))
//			.andReturn().getModelAndView().getModel());
//	}
	
//	// 상세보기
//	@Test
//	public void testGet() throws Exception {
//		log.info(mockMvc.perform(MockMvcRequestBuilders.get("/serialLot/serialLotGet")
//				.param("serial_lot_code", "RM-001-20240801"))
//				.andReturn()
//				.getModelAndView().getModel());
//	}
	
//	// 등록 테스트
//	@Test
//	public void testRegister() throws Exception {
//	    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
//	    Date date = format.parse("2023-12-31");
//	    java.sql.Date sqlDate = new java.sql.Date(date.getTime());
//	    log.info(sqlDate.toString());
//	    
//	    // SerialLotVO 객체 생성 및 필드 설정
//	    SerialLotVO serialLotVO = new SerialLotVO();
//	    serialLotVO.setItem_code("RM-002");
//	    serialLotVO.setExpiration_date(sqlDate);
//	    String serial_lot_code = serialLotVO.getItem_code() +"-"+ new SimpleDateFormat("yyyyMMdd").format(date);
//	    serialLotVO.setSerial_lot_code(serial_lot_code);
//	    serialLotVO.setItem_name("소고기 불고기용");
//	    serialLotVO.setStock_quantity(100);
//	    serialLotVO.setSupplier("SP-001");
//	    serialLotVO.setRelated_invoice("구매전표코드");
//	    
//	    try {
//	        String resultPage = mockMvc.perform(MockMvcRequestBuilders.post("/serialLot/serialLotRegister")
//	        		.flashAttr("serialLotVO", serialLotVO)) // post 방식으로 객체 전달
//	                .andReturn().getModelAndView().getViewName();
//	        log.info(resultPage);
//	    } catch (Exception e) {
//	        log.error("Exception occurred: ", e);
//	        throw e;
//	    }
//	}

//	// 수정 테스트
//	@Test
//	public void testModify() throws Exception {
//		SerialLotVO serialLotVO = service.get("RM-002-20231231");
//		String resultPage = mockMvc.perform(MockMvcRequestBuilders.post("/serialLot/serialLotModify")
//				.flashAttr("serialLotVO", serialLotVO)
//				.param("stock_quantity", "50"))
//				.andReturn().getModelAndView().getViewName();
//		log.info(resultPage);
//	}
}
