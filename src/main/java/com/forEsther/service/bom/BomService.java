package com.forEsther.service.bom;

import java.util.List;

import com.forEsther.vo.bomvo.BomVO;

public interface BomService {
	public List<BomVO> getList();
	public List<BomVO> get(String product_name);
	public int getCount(String product_name);
}
