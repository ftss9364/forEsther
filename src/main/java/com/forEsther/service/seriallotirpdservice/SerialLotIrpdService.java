package com.forEsther.service.seriallotirpdservice;

import java.util.List;

import com.forEsther.vo.commonvo.Criteria;
import com.forEsther.vo.seriallotirpdvo.SerialLotIrpdVO;

public interface SerialLotIrpdService {
	// 추상메소드
	
	// insert
	public void register(SerialLotIrpdVO serialLotIrpd);

	// read
	public List<SerialLotIrpdVO> get(String serial_lot_code);
	
	// getList
	public List<SerialLotIrpdVO> getList(Criteria cri);
	
	// 전체 데이터 개수 가져오기
	public int getTotal(Criteria cri);
}
