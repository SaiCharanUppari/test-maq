package com.mindtree.testdevopsmaq.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mindtree.testdevopsmaq.model.Category;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Integer>{

}
