package com.forEsther.service.seriallotservice;

import java.util.List;
import java.util.Map;

import com.forEsther.vo.commonvo.Criteria;
import com.forEsther.vo.itemvo.ItemVO;
import com.forEsther.vo.seriallotvo.SerialLotVO;

public interface SerialLotService {
	
	// insert
	public void register(SerialLotVO serial_lot, String serial_lot_code);
	
	// read
	public SerialLotVO get(String serial_lot_code);
	
	// update
	public boolean modify(SerialLotVO serial_lot);
	
	// getList
	public List<SerialLotVO> getList(Criteria cri);
	
	// 전체 데이터 개수 가져오기
	public int getTotal(Criteria cri);
	
	// 품목 검색 
	public List<ItemVO> itemSearch(Map<String, Object> searchParams);
	
}

