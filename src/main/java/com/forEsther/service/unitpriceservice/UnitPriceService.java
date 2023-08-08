package com.forEsther.service.unitpriceservice;

import java.util.List;
import java.util.Map;

import com.forEsther.vo.commonvo.Criteria;
import com.forEsther.vo.quotationfilevo.QuotationFileVO;
import com.forEsther.vo.unitpricevo.UnitPriceVO;

public interface UnitPriceService {

	public int register(UnitPriceVO vo);
	public int registerWithFile(UnitPriceVO vo, QuotationFileVO file);
	public String getThumbnail(String unit_price_code);
	public List<Map<Integer, Integer>> getChart(String item_code);
	public int modify(UnitPriceVO vo);
	public UnitPriceVO get(String unit_price_code);
	public List<UnitPriceVO> getList(Criteria cri);
	public int getTotalCount(Criteria cri);
	public List<Map<String, Object>>autocomplete(Map<String, Object> paramMap);
}
