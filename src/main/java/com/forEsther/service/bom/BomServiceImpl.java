package com.forEsther.service.bom;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.forEsther.mapper.bommapper.BomMapper;
import com.forEsther.vo.bomregistrationvo.BomRegistrationVO;
import com.forEsther.vo.bomvo.BomVO;
import com.forEsther.vo.itemvo.ItemVO;

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

	@Override
	public String getBomregCount() {
		
		log.info("getBomregCount-----------------------------------------");
		
		return mapper.getBomregCount();
	}

	@Override
	public void register_bom(BomVO bom_vo) {

		log.info("register_bom----------------------------------------");
		mapper.insert_bom(bom_vo);
	}

	@Override
	public void register_bom_registration(BomRegistrationVO bomregistration_vo) {
		log.info("register_bom_registration---------------------------------");
		mapper.insert_bom_registration(bomregistration_vo);
		
	}

	@Override
	public boolean remove_bom(String bom_code) {

		log.info("remove_bom--------------------------");
		
		return mapper.delete_bom(bom_code) == 1;
	}

	@Override
	public boolean remove_bom_to_bom_registration(String bom_code) {

		log.info("remove_bom_to_bom_registration------------------------------------");
		
		return mapper.delete_bom_to_bom_registration(bom_code) == 1;
	}

	@Override
	public boolean remove_bom_registration(String bom_registration_code) {

		log.info("remove_bom_registration-------------------------");
		
		return mapper.delete_bom_registration(bom_registration_code) == 1;
	}

	@Override
	public List<ItemVO> getItemList() {
		
		log.info("getItemList-----------------------------");
		
		return mapper.getItemList();
	}

	
	@Override
	public List<ItemVO> getBomItemList() {
		log.info("getBomItemList-----------------------------");
		
		return mapper.getBomItemList();
	}

	@Override
	public BomVO getDetail(String bom_code) {
		
		log.info("getDetail........................");
		
		return mapper.get(bom_code);
	}

	@Override
	public ItemVO getItem(String item_code) {
		
		log.info("getItem..................");
		return mapper.getItem(item_code);
	}



}
