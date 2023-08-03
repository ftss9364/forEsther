package com.forEsther.service.bom;

import java.util.List;

import com.forEsther.vo.bomregistrationvo.BomRegistrationVO;
import com.forEsther.vo.bomvo.BomVO;
import com.forEsther.vo.itemvo.ItemVO;

public interface BomService {
	public List<BomVO> getList();
	public List<BomVO> get(String product_name);
	public int getCount(String product_name);
	public BomVO getDetail(String bom_code);
	
	public String getBomregCount();
	public void register_bom(BomVO bom_vo);
	public void register_bom_registration(BomRegistrationVO bomregistration_vo);
	public boolean remove_bom(String bom_code);
	public boolean remove_bom_to_bom_registration(String bom_code);
	public boolean remove_bom_registration(String bom_registration_code);
	public List<ItemVO> getItemList();
	public List<ItemVO> getBomItemList();
	
}
