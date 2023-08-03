package com.forEsther.mapper.bommapper;

import java.util.List;

import com.forEsther.vo.bomregistrationvo.BomRegistrationVO;
import com.forEsther.vo.bomvo.BomVO;
import com.forEsther.vo.itemvo.ItemVO;

public interface BomMapper {
	public int getCount(String product_name);
	public BomVO get(String bom_code);
	public List<BomVO> getList();
	public List<BomVO> search(String product_name);
	public String getBomregCount();
	public void insert_bom(BomVO bom_vo);
	public void insert_bom_registration(BomRegistrationVO bomregistration_vo);
	public int delete_bom(String bom_code);
	public int delete_bom_to_bom_registration(String bom_code);
	public int delete_bom_registration(String bom_registration_code);
	public List<ItemVO> getBomItemList();
	public List<ItemVO> getItemList();
}
