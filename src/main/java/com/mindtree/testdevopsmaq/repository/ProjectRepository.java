package com.mindtree.testdevopsmaq.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mindtree.testdevopsmaq.model.Project;

@Repository
public interface ProjectRepository extends JpaRepository<Project, Integer> {

}
