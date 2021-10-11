package com.springmvc.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "Categories")
public class CategoryEntity extends BaseEntity {

	@Column(name = "name", columnDefinition = "NVARCHAR(250)")
	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
}
