package com.mindtree.testdevopsmaq.service;

import java.util.List;

import com.mindtree.testdevopsmaq.model.Project;

public interface ProjectService {
		
	List<Project> getProjects();

	void deleteProject(String projectName);

	void addNewProject(Project project, String username);

}
