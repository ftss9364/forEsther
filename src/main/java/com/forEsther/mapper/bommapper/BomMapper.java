package com.forEsther.mapper.bommapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.forEsther.vo.bomregistrationvo.BomRegistrationVO;
import com.forEsther.vo.bomvo.BomVO;
import com.forEsther.vo.itemvo.ItemVO;

public interface BomMapper {
	public int getCount(String product_name);
	public BomVO get(String bom_code);
	public BomVO getBom(String bom_code);
	public List<BomVO> getBomList();
	public List<BomVO> getList();
	public List<BomVO> search(String product_name);
	public String getBomregCount();
	public void insertBom(BomVO bom_vo);
	public void insertBomRegistration(BomRegistrationVO bomregistration_vo);
	public int deleteBom(String bom_code);
	public int deleteBomToBomRegistration(String bom_code);
	public int deleteBomRegistration(String bom_registration_code);
	public List<ItemVO> getBomItemList();
	public List<ItemVO> getItemList();
	public ItemVO getItem(String item_code);
	public List<ItemVO> searchItem(String item_name);
	public List<ItemVO> searchProduct(String item_name);
	public List<BomRegistrationVO> getBomRegistration(String bom_code);
	public int updateBomRegistration(@Param("required_quantity") int required_quantity,@Param("bom_registration_code") String bom_registration_code);
}
