package com.forEsther.mapper;

import com.forEsther.vo.suppliervo.SupplierVO;

public interface SupplierMapper {
	// 구매처 검색
	public SupplierVO searchSupplier(String supplierName); 
}
