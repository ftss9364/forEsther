package com.forEsther.service.seriallotservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.forEsther.mapper.seriallotmapper.SerialLotMapper;
import com.forEsther.vo.seriallotvo.SerialLotVO;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class SerialLotServiceImpl implements SerialLotService {
	@Autowired
	private SerialLotMapper mapper;
	
	@Override
	public void register(SerialLotVO serial_lot) {
		mapper.insert(serial_lot);
	}

	@Override
	public SerialLotVO get(String serial_lot_code) {
		return mapper.read(serial_lot_code);
	}

	@Override
	public boolean modify(SerialLotVO serial_lot) {
		log.info("modify........." + serial_lot);
		return mapper.update(serial_lot) == 1;
	}

	@Override
	public List<SerialLotVO> getList() {
		return mapper.getList();
	}

}
