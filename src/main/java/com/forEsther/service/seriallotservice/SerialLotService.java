package com.forEsther.service.seriallotservice;

import java.util.List;

import com.forEsther.vo.seriallotvo.SerialLotVO;

public interface SerialLotService {
	
	// insert
	public void register(SerialLotVO serial_lot);
	
	// read
	public SerialLotVO get(String serial_lot_code);
	
	// update
	public boolean modify(SerialLotVO serial_lot);
	
	// getList
	public List<SerialLotVO> getList();
}
