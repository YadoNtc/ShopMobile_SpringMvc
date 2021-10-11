package com.springmvc.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Products")
public class ProductEntity extends BaseEntity {

	@Column(name = "name", columnDefinition = "NVARCHAR(250)")
	private String name;

	@Column(name = "code")
	private String code;

	@Column(name = "price", columnDefinition = "BIGINT")
	private Long price;

	@Column(name = "image")
	private String image;

	@Column(name = "description", columnDefinition = "NVARCHAR(500)")
	private String description;

	@Column(name = "detail", columnDefinition = "NTEXT")
	private String detail;

	@Column(name = "quantity")
	private int quantity;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "categoryId")
	private CategoryEntity category;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "producerId")
	private ProducerEntity producer;

	public CategoryEntity getCategory() {
		return category;
	}

	public void setCategory(CategoryEntity category) {
		this.category = category;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public Long getPrice() {
		return price;
	}

	public void setPrice(Long price) {
		this.price = price;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public ProducerEntity getProducer() {
		return producer;
	}

	public void setProducer(ProducerEntity producer) {
		this.producer = producer;
	}

}
