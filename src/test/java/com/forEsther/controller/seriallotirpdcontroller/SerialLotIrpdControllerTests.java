package com.forEsther.controller.seriallotirpdcontroller;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import com.forEsther.controller.seriallotcontroller.SerialLotControllerTests;
import com.forEsther.service.seriallotirpdservice.SerialLotIrpdService;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({
	"file:src/main/webapp/WEB-INF/spring/root-context.xml",
	"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"
})
@Log4j
public class SerialLotIrpdControllerTests {
	@Autowired
	private WebApplicationContext ctx;
	
	@Autowired
	private SerialLotIrpdService service;
	
	private MockMvc mockMvc;
	
	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	
//	// 상세보기
//	@Test
//	public void testGet() throws Exception {
//		log.info(mockMvc.perform(MockMvcRequestBuilders.get("/serialLot/serialLotIrpdGet")
//				.param("serial_lot_code", "RM-001-20240801"))
//				.andReturn()
//				.getModelAndView().getModel());
//	}
	
//	
//	// 전체 목록 테스트
//	@Test
//	public void testListPaging() throws Exception {
//		log.info(mockMvc.perform(
//					MockMvcRequestBuilders.get("/serialLot/serialLotIrpdList")
//					.param("pageNum", "1")
//					.param("amount", "10"))
//					.andReturn().getModelAndView().getModelMap()
//				);
//	}

}
