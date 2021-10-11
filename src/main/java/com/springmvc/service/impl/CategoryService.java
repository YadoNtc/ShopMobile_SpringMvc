package com.springmvc.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvc.entity.CategoryEntity;
import com.springmvc.repository.CategoryRepository;
import com.springmvc.service.ICategoryService;

@Service
public class CategoryService implements ICategoryService{
	
	@Autowired
	private CategoryRepository categoryRepository;

	@Override
	public Map<Long, String> findAll() {
		Map<Long, String> map = new HashMap<>();
		List<CategoryEntity> entity = categoryRepository.findAll();
		for (CategoryEntity category : entity) {
			map.put(category.getId(), category.getName());
		}
		return map;
	}

}
