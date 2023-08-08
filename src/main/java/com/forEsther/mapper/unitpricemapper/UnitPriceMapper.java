package com.forEsther.mapper.unitpricemapper;

import java.util.List;
import java.util.Map;

import com.forEsther.vo.commonvo.Criteria;
import com.forEsther.vo.quotationfilevo.QuotationFileVO;
import com.forEsther.vo.unitpricevo.UnitPriceVO;

public interface UnitPriceMapper {
	public List<UnitPriceVO> getList(Criteria cri);
	public UnitPriceVO read(String unit_price_code);
	public String getThumbnail(String unit_price_code);
	public List<Map<Integer, Integer>> getChart(String item_code);
	public int getTotalCount(Criteria cri);
	public int update(UnitPriceVO vo);
	public int insert(UnitPriceVO vo);
	public int insertFile(QuotationFileVO file);
	public List<Map<String, Object>>autocomplete(Map<String, Object> paramMap);
}
