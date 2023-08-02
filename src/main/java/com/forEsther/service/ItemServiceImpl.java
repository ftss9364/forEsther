package com.forEsther.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.forEsther.mapper.ItemMapper;
import com.forEsther.vo.itemvo.ItemVO;

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

}
