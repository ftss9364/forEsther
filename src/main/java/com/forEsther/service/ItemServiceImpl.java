package com.forEsther.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.forEsther.mapper.ItemMapper;
import com.forEsther.vo.itemvo.ItemVO;
import com.forEsther.vo.jsonitemvo.JsonItemVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@AllArgsConstructor
@Log4j
public class ItemServiceImpl implements ItemService {
	private ItemMapper mapper;

	@Override
	public List<ItemVO> getItemList() {
		log.info("[GET/Service] getItemList...");
		return mapper.getItemList(); 
	}

	@Override
	public List<ItemVO> searchItem(String searchType, String searchValue) {
		log.info("[GET/Service] searchItem...");
		return mapper.searchItem(searchValue);
		
	}

	@Override
	public void registerItem(JsonItemVO item) {
		log.info("[GET/Service] registerItem...");
		mapper.registerItem(item);
	}

}
