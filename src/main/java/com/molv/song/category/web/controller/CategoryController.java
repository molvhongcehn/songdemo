package com.molv.song.category.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/category")
public class CategoryController {

	@RequestMapping(value = "/category_list")
	public void listCategory() {
		
	}
}
