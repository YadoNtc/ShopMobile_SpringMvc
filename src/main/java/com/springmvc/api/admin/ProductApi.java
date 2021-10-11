package com.springmvc.api.admin;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.springmvc.dto.ProductDto;

@RestController(value = "apiOfAdmin")
public class ProductApi {
	
	@PostMapping("/api/product")
	public ProductDto createProduct(@RequestBody ProductDto productDto) {
		return productDto;	
	}
	
	@PutMapping("/api/product")
	public ProductDto updateProduct(@RequestBody ProductDto productDto) {
		return productDto;		
	}
	
	@DeleteMapping("/api/product")
	public void deleteProduct(@RequestBody Long[] ids) {	
		System.out.println("Da xoa");
	}
}
