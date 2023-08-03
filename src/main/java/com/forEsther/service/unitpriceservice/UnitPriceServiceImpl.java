package com.forEsther.service.unitpriceservice;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.forEsther.mapper.unitpricemapper.UnitPriceMapper;
import com.forEsther.vo.commonvo.Criteria;
import com.forEsther.vo.unitpricevo.UnitPriceVO;

@Service
public class UnitPriceServiceImpl implements UnitPriceService {

	@Autowired
	private UnitPriceMapper mapper;

	@Override
	public int register(UnitPriceVO vo) {
		return mapper.insert(vo);
	}

	@Override
	public int modify(UnitPriceVO vo) {
		return mapper.update(vo);
	}

	@Override
	public UnitPriceVO get(String unit_price_code) {
		return mapper.read(unit_price_code);
	}

	@Override
	public List<UnitPriceVO> getList(Criteria cri) {
		return mapper.getList(cri);
	}

	@Override
	public int getTotalCount(Criteria cri) {
		return mapper.getTotalCount(cri);
	}

	@Override
	public List<Map<String, Object>> autocomplete(Map<String, Object> paramMap) {
		return mapper.autocomplete(paramMap);
	}
	
	
}
