package com.forEsther.service.seriallotirpdservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.forEsther.mapper.seriallotirpdmapper.SerialLotIrpdMapper;
import com.forEsther.vo.commonvo.Criteria;
import com.forEsther.vo.seriallotirpdvo.SerialLotIrpdVO;
import com.forEsther.vo.seriallotvo.SerialLotVO;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class SerialLotIrpdServiceImpl implements SerialLotIrpdService {
	@Autowired
	private SerialLotIrpdMapper mapper;
	
	@Transactional
	@Override
	public void register(SerialLotIrpdVO serial_lot_irpd) {
		try {
		mapper.insert(serial_lot_irpd);
		log.info("insert.........." + serial_lot_irpd);
		}
		catch (Exception e) {
			throw new RuntimeException("Transaction failed: " + e.getMessage());
		}
	}

	@Override
	public List<SerialLotIrpdVO> get(String serial_lot_code) {
		log.info("read.........." + serial_lot_code);
		return mapper.read(serial_lot_code);
	}

	@Override
	public List<SerialLotIrpdVO> getList(Criteria cri) {
		return mapper.getList(cri);
	}
	
	@Override
	public int getTotal(Criteria cri) {
		log.info("get Total count");
		return mapper.getTotalCount(cri);
	}

}
