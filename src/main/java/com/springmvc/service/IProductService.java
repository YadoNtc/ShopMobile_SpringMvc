package com.springmvc.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.springmvc.dto.ProductDto;

public interface IProductService {
	
	List<ProductDto> findAll(Pageable pageble);
	
	int getTotalItem();
	
	ProductDto findById(Long id);
}
