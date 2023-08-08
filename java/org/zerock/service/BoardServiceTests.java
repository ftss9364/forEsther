package org.zerock.service;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.BoardVO;
import org.zerock.mapper.BoardMapperTests;

import lombok.extern.log4j.Log4j;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardServiceTests {
	
	@Autowired
	private BoardService service;
	

//	@Test
//	public void test() {
//		BoardVO board = new BoardVO();
//		board.setTitle("새로 작성하는 글이래");
//		board.setContent("새로 작성하는 내용이래");
//		board.setWriter("뉴비");
//		
//		service.register(board);
//		log.info("생성된 게시물 번호:" + board.getBno());
//	}
	
//	@Test
//	public void testGetList() {
//		service.getList().forEach(board -> log.info(board));
//	}

//	@Test
//	public void testGet() {
//		log.info(service.get(10L));
//	}
	
//	@Test
//	public void testModify() {
//		BoardVO board = service.get(10L);
//		if(board == null) {
//			return;
//		}	
//		
//		board.setTitle("수정한 제목");
//		log.info("modify result:" + service.modify(board));
//	}
	
	@Test
	public void testRemove() {
		log.info("remove result:" + service.remove(7L));
	}
}
