package com.springmvc.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "Producer")
public class ProducerEntity extends BaseEntity {
	
	@Column(name = "name", columnDefinition = "NVARCHAR(250)")
	private String nane;
	
	@Column(name = "code")
	private String code;

	public String getNane() {
		return nane;
	}

	public void setNane(String nane) {
		this.nane = nane;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}
}
