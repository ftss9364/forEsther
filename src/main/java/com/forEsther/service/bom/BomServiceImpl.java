package com.forEsther.service.bom;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.forEsther.mapper.bommapper.BomMapper;
import com.forEsther.vo.bomvo.BomVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@AllArgsConstructor
@Log4j
public class BomServiceImpl implements BomService {

	@Autowired
	private BomMapper mapper;
	
	@Override
	public List<BomVO> getList() {
		
		log.info("getList----------------------------------");
		
		return mapper.getList();
	}

	@Override
	public List<BomVO> get(String product_name) {
		log.info("get----------------------------------");
		
	
		return mapper.search(product_name);
	}

	@Override
	public int getCount(String product_name) {
		log.info("getCount-------------------------------");
		
		return mapper.getCount(product_name);
	}

}
