package com.forEsther.mapper.bommapper;

import java.util.List;

import com.forEsther.vo.bomvo.BomVO;

public interface BomMapper {
	public int getCount(String product_name);
	public List<BomVO> getList();
	public List<BomVO> search(String product_name);
}
