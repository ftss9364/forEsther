package com.forEsther.service;

import org.springframework.stereotype.Service;

import com.forEsther.mapper.SupplierMapper;
import com.forEsther.vo.suppliervo.SupplierVO;

import lombok.extern.log4j.Log4j;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
@Log4j
public class SupplierServiceImpl implements SupplierService {
	private SupplierMapper mapper;

	@Override
	public SupplierVO searchSupplier(String supplierName) {
		log.info("[GET/Service] searchItem...");
		return mapper.searchSupplier(supplierName);
	}

}
