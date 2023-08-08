package com.forEsther.service.seriallotservice;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.forEsther.mapper.seriallotirpdmapper.SerialLotIrpdMapper;
import com.forEsther.mapper.seriallotmapper.SerialLotMapper;
import com.forEsther.service.seriallotirpdservice.SerialLotIrpdService;
import com.forEsther.vo.commonvo.Criteria;
import com.forEsther.vo.itemvo.ItemVO;
import com.forEsther.vo.seriallotirpdvo.SerialLotIrpdVO;
import com.forEsther.vo.seriallotvo.SerialLotVO;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class SerialLotServiceImpl implements SerialLotService {
	@Autowired
	private SerialLotMapper mapper;
	
	@Autowired
	private SerialLotIrpdService irpdService;
	
	@Transactional(rollbackFor = Exception.class)
	@Override
	public void register(SerialLotVO serial_lot, String serial_lot_code) {
		try {
		mapper.insert(serial_lot);
		// SerialLotVO를 기반으로 SerialLotIrpdVO 생성
        SerialLotIrpdVO serial_lot_irpd = createSerialLotIrpdVOFromSerialLotVO(serial_lot);
        	
        // serialLotIrpdVO insert 실행 (SerialLotIrpdService의 register 메서드 호출)
        irpdService.register(serial_lot_irpd);
		} catch (Exception e) {
			throw new RuntimeException("Transaction failed: " + e.getMessage());
		}
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
	public List<SerialLotVO> getList(Criteria cri) {
		return mapper.getList(cri);
	}
	
	@Override
	public int getTotal(Criteria cri) {
		log.info("get Total count");
		return mapper.getTotalCount(cri);
	}
	
    // SerialLotVO를 기반으로 SerialLotIrpdVO를 생성하는 메서드
    private SerialLotIrpdVO createSerialLotIrpdVOFromSerialLotVO(SerialLotVO serialLotVO) {
        SerialLotIrpdVO serialLotIrpdVO = new SerialLotIrpdVO();

        // SerialLotVO의 필드 값을 SerialLotIrpdVO의 필드에 설정
        serialLotIrpdVO.setItem_name(serialLotVO.getItem_name());
        serialLotIrpdVO.setRelated_invoice(serialLotVO.getRelated_invoice());
        serialLotIrpdVO.setCustomer_name(serialLotVO.getSupplier());
        
        // variation_quantity와 stock_quantity 계산
        int variation_quantity = serialLotVO.getStock_quantity(); // 계산 로직 필요 (SerialLotVO에서의 stock_quantity 값 사용)
        int stock_quantity = serialLotVO.getStock_quantity() + variation_quantity;
        serialLotIrpdVO.setVariation_quantity(variation_quantity);
        serialLotIrpdVO.setStock_quantity(stock_quantity);
        serialLotIrpdVO.setSerial_lot_code(serialLotVO.getSerial_lot_code());

        // 나머지 필드들도 필요에 따라 설정

        return serialLotIrpdVO;
    }
    
	
	  // 검색 자동완성
	  @Override public List<ItemVO> itemSearch(Map<String, Object> searchParams) {
	  return mapper.itemSearch(searchParams); 
	  }
	 

}
