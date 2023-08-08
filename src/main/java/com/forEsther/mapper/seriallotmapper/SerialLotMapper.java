package com.forEsther.mapper.seriallotmapper;

import java.util.List;

import com.forEsther.vo.seriallotvo.SerialLotVO;

// 시리얼로트 (등록, 상세조회, 수정, 전체조회)
public interface SerialLotMapper {
	// 추상메소드
	// 등록
	public void insert(SerialLotVO serial_lot);
	
	// 상세조회
	public SerialLotVO read(String serial_lot_code);
	
	// 수정
	public int update(SerialLotVO serial_lot);
	
	// 전체조회
	public List<SerialLotVO> getList();
}
