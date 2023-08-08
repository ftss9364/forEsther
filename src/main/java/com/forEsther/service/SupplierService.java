package com.forEsther.service;

import com.forEsther.vo.suppliervo.SupplierVO;

public interface SupplierService {
	// 구매처 검색 
	public SupplierVO searchSupplier(String supplierName);
}
