package com.forEsther.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.forEsther.vo.itemvo.ItemVO;
import com.forEsther.vo.jsonitemvo.JsonItemVO;

public interface ItemService {
	// 품목 전체 조회
	public List<ItemVO> getItemList();
	
	// 품목 상세 조회
	public ItemVO getItemDetail(String itemCode);
	
	// 품목 검색
	public List<ItemVO> searchItem(String searchType, String searchValue);
	
	// 품목 등록
	public int registerItem(JsonItemVO item);
	
	// 품목 삭제
	public int removeItem(String itemCode);
	

}
