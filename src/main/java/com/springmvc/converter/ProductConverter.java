package com.springmvc.converter;

import org.springframework.stereotype.Component;

import com.springmvc.dto.ProductDto;
import com.springmvc.entity.ProductEntity;

@Component
public class ProductConverter {

	public ProductDto toDto(ProductEntity entity) {
		ProductDto dto = new ProductDto();
		dto.setId(entity.getId());
		dto.setName(entity.getName());
		dto.setImage(entity.getImage());
		dto.setCode(entity.getCode());
		dto.setDescription(entity.getDescription());
		dto.setDetail(entity.getDetail());
		dto.setPrice(entity.getPrice());
		dto.setQuantity(entity.getQuantity());
		dto.setCategoryId(entity.getCategory().getId());
		dto.setProducerId(entity.getProducer().getId());
		return dto;		
	}
	
	public ProductEntity toEntity(ProductDto dto) {
		
		ProductEntity entity = new ProductEntity();
		entity.setName(dto.getName());
		entity.setImage(dto.getImage());
		entity.setCode(dto.getCode());
		entity.setDescription(dto.getDescription());
		entity.setDetail(dto.getDetail());
		entity.setPrice(dto.getPrice());
		entity.setQuantity(dto.getQuantity());
		return entity;
		
	}
}
