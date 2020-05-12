package com.mindtree.testdevopsmaq.service.impl;

import java.util.ArrayList;
import java.util.List;

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
	public List<Project> getProjects() {
		List<Project> projects = projectRepo.findAll();

		return projects;
	}

	@Override
	public void deleteProject(String projectName) {
		Project project = projectRepo.findByProjectName(projectName);
		projectRepo.delete(project);
	}

	@Override
	public void addNewProject(Project project, String username) {
		User account = userRepo.findByUsername(username);

		List<Project> eProjects = projectRepo.findAll();

		Project newProject = null;

		for (Project p : eProjects) {
			if (p.getProjectName().equalsIgnoreCase(project.getProjectName())) {
				newProject = p;
				break;
			}
		}

		if (newProject == null) {
			project.setAccount(account);
			projectRepo.save(project);
		}
	}

}
