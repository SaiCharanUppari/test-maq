package com.mindtree.testdevopsmaq.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mindtree.testdevopsmaq.model.Project;
import com.mindtree.testdevopsmaq.model.User;
import com.mindtree.testdevopsmaq.repository.ProjectRepository;
import com.mindtree.testdevopsmaq.repository.UserRepository;
import com.mindtree.testdevopsmaq.service.ProjectService;

@Service
public class ProjectServiceImpl implements ProjectService {
	
	@Autowired
	ProjectRepository projectRepo;
	
	@Autowired
	UserRepository userRepo;

	@Override
	public Project addProject(Project project, int id) {
		
		User user = userRepo.findById(id).get();
		
		project.setAccount(user);
		
		Project added = projectRepo.save(project);
		
		return added;
	}

}
