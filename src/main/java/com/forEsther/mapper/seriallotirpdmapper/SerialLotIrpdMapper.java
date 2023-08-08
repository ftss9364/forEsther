package com.forEsther.mapper.seriallotirpdmapper;

import java.util.List;

import com.forEsther.vo.commonvo.Criteria;
import com.forEsther.vo.seriallotirpdvo.SerialLotIrpdVO;

public interface SerialLotIrpdMapper {
	// 추상 메소드
	// 등록
	public void insert(SerialLotIrpdVO serial_lot_irpd);
	
	// 상세조회
	// 동일한 serial_lot_code를 가진 여러개의 값을 출력
	public List<SerialLotIrpdVO> read(String serial_lot_code);
	
	// 전체조회
	public List<SerialLotIrpdVO> getList(Criteria cri);
	
	// 데이터 총 개수
	public int getTotalCount(Criteria cri);
}
