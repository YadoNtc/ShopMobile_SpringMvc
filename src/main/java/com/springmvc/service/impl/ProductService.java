package com.springmvc.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.springmvc.converter.ProductConverter;
import com.springmvc.dto.ProductDto;
import com.springmvc.entity.ProductEntity;
import com.springmvc.repository.ProductRepository;
import com.springmvc.service.IProductService;

@Service
public class ProductService implements IProductService {
	
	@Autowired 
	private ProductRepository productRepository;
	@Autowired
	private ProductConverter productConverter;

	@Override
	public List<ProductDto> findAll(Pageable pageable) {
		List<ProductDto> dto = new ArrayList<ProductDto>();
		List<ProductEntity> entity = productRepository.findAll();
		for (ProductEntity product : entity) {
			ProductDto productDto = new ProductDto();
			productDto = productConverter.toDto(product);
			dto.add(productDto);
		}
		return dto;
	}

	@Override
	public int getTotalItem() {		
		return (int) productRepository.count();
	}

	@Override
	public ProductDto findById(Long id) {
		ProductEntity entity = productRepository.findOne(id);
		return productConverter.toDto(entity);
	}
	
	
}
