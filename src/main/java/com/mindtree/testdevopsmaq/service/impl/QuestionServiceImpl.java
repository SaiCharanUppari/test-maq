package com.mindtree.testdevopsmaq.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mindtree.testdevopsmaq.model.Category;
import com.mindtree.testdevopsmaq.model.Question;
import com.mindtree.testdevopsmaq.repository.CategoryRepository;
import com.mindtree.testdevopsmaq.repository.QuestionRepository;
import com.mindtree.testdevopsmaq.service.QuestionService;

@Service
public class QuestionServiceImpl implements QuestionService {

	@Autowired
	QuestionRepository questionRepo;

	@Autowired
	CategoryRepository categoryRepo;

	@Override
	public Question addQuestion(Question question, int id) {

		Category category = categoryRepo.findById(id).get();

		question.setCategory(category);

		Question added = questionRepo.save(question);

		return added;
	}

}
