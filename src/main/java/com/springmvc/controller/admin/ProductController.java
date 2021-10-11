package com.springmvc.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.springmvc.dto.ProductDto;
import com.springmvc.service.ICategoryService;
import com.springmvc.service.IProductService;

@Controller(value = "productControllerOfAdmin")
public class ProductController {
	
	@Autowired
	private IProductService productService;
	
	@Autowired
	private ICategoryService categoryService;

	@RequestMapping(value = "/admin-product-list", method = RequestMethod.GET)
	public ModelAndView showList(@ModelAttribute("product") ProductDto productDto,
								@RequestParam("page") int page, @RequestParam("limit") int limit) {
		productDto.setPage(page);
		productDto.setLimit(limit);
		ModelAndView list = new ModelAndView("/admin/product/listProduct");
		Pageable pageble = new PageRequest(page - 1, limit);
		productDto.setListResult(productService.findAll(pageble));
		productDto.setTotalItem(productService.getTotalItem());
		productDto.setTotalPage((int) Math.ceil((double) productDto.getTotalItem() / productDto.getLimit()));
		list.addObject(productDto);
		return list;	
	}
	
	@RequestMapping(value = "/admin-product-edit", method = RequestMethod.GET)
	public ModelAndView edit(@RequestParam(value = "id", required = false) Long id) {
		ModelAndView edit = new ModelAndView("/admin/product/edit");
		ProductDto dto = new ProductDto();
		if (id != null) {
			dto = productService.findById(id);
		}
		edit.addObject("categories", categoryService.findAll());
		edit.addObject("model", dto);
		return edit;	
	}
}
