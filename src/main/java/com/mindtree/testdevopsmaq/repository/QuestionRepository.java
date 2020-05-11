package com.mindtree.testdevopsmaq.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mindtree.testdevopsmaq.model.Category;
import com.mindtree.testdevopsmaq.model.Question;

@Repository
public interface QuestionRepository extends JpaRepository<Question, Integer> {
	
	Question findByCategory(Category category);

}
