package com.springmvc.dto;

public class CategoryDto extends AbstractDto<CategoryDto> {
	
	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
