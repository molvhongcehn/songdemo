package com.molv.song.category.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.molv.song.category.bean.Category;
import com.molv.song.category.dao.CategoryDao;
import com.molv.song.category.service.CategoryService;

@Service
public class CategoryServiceImpl implements CategoryService{
	@Autowired
	CategoryDao categoryDao;

	@Override
	public List<Category> listCategory() {
		List<Category> itemList = categoryDao.getList();
		return itemList;
	}

}
