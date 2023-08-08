package com.forEsther.service.unitpriceservice;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;

import com.forEsther.mapper.unitpricemapper.UnitPriceMapper;
import com.forEsther.vo.commonvo.Criteria;
import com.forEsther.vo.quotationfilevo.QuotationFileVO;
import com.forEsther.vo.unitpricevo.UnitPriceVO;



@Service
public class UnitPriceServiceImpl implements UnitPriceService {

	@Autowired
	private UnitPriceMapper mapper;

	@Override
	public int register(UnitPriceVO vo) {
		return mapper.insert(vo);
	}

	@Transactional(rollbackFor = {SQLException.class})
	@Override
	public int registerWithFile(UnitPriceVO unitPrice, QuotationFileVO file) {
		try {
			mapper.insert(unitPrice);
			mapper.insertFile(file);
			
		} catch (Exception e) {
			e.printStackTrace();
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
			return 0;
		}

		return 1;
	}

	@Override
	public String getThumbnail(String unit_price_code) {	
		
		String result = "";
		
		try {
			result = mapper.getThumbnail(unit_price_code);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		
		return result;
	}
	
	@Override
	public List<Map<Integer, Integer>> getChart(String item_code) {
		return mapper.getChart(item_code);
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
