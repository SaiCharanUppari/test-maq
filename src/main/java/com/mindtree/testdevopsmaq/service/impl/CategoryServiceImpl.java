package com.mindtree.testdevopsmaq.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mindtree.testdevopsmaq.model.Area;
import com.mindtree.testdevopsmaq.model.Category;
import com.mindtree.testdevopsmaq.repository.AreaRepository;
import com.mindtree.testdevopsmaq.repository.CategoryRepository;
import com.mindtree.testdevopsmaq.service.CategoryService;

@Service
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	CategoryRepository categoryRepo;

	@Autowired
	AreaRepository areaRepo;

	@Override
	public Category addCategory(Category category, int id) {

		Area area = areaRepo.findById(id).get();

		category.setArea(area);

		Category added = categoryRepo.save(category);

		return added;
	}

}
