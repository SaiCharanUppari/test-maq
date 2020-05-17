package com.mindtree.testdevopsmaq.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mindtree.testdevopsmaq.model.Project;
import com.mindtree.testdevopsmaq.model.User;
import com.mindtree.testdevopsmaq.service.AreaService;
import com.mindtree.testdevopsmaq.service.CategoryService;
import com.mindtree.testdevopsmaq.service.FeedbackService;
import com.mindtree.testdevopsmaq.service.ProjectService;
import com.mindtree.testdevopsmaq.service.QuestionService;
import com.mindtree.testdevopsmaq.service.UserService;

@Controller
public class AdminController {

	@Autowired
	UserService userService;

	@Autowired
	ProjectService projectService;

	@Autowired
	AreaService areaService;

	@Autowired
	CategoryService categoryService;

	@Autowired
	QuestionService questionService;

	@Autowired
	FeedbackService feedbackService;
	
	
	@RequestMapping("/adminOperations")
	public String admin(Model model) {
		model.addAttribute("users", userService.getAccounts());
		model.addAttribute("projects", projectService.getProjects());
		return "admin";
	}

	/*
	 * @RequestMapping("/adminOperations") public String adminOperations() { return
	 * "adminPage"; }
	 */

	@RequestMapping("/showadduser")
	public String showuserpage() {
		return "addUser";
	}

	@RequestMapping("/adduser")
	public String addUser(User newUser) {
		userService.addNewUser(newUser);
		return "redirect:/adminOperations";			//changed adminPage

	}
	
	/* Delete Down	*/
	
	@RequestMapping("/udelete")
	public String deleteuserpage(Model model) {
		
		model.addAttribute("users", userService.getAccounts());
		return "deleteUser";
	}
	
	
	/* Delete Up	*/

	@RequestMapping("/showdeleteuser")
	public String showdeletepage(Model model) {
		model.addAttribute("users", userService.getAccounts());
		return "deleteUser";
	}

	@RequestMapping("/deleteuser")
	public String deleteUser(String username) {
		userService.deleteUser(username);
		return "redirect:/adminOperations";			//changed adminPage
	}

	@RequestMapping("/showdeleteproject")
	public String showpojectdeletepage(Model model) {

		model.addAttribute("projects", projectService.getProjects());
		return "deleteProject";
	}

	@RequestMapping("/deleteproject")
	public String deleteProject(String projectName) {
		projectService.deleteProject(projectName);
		return "redirect:/adminOperations";		//changed adminPage
	}

	@RequestMapping("/showaddproject")
	public String showAddingProjectPage(Model model) {
		model.addAttribute("accounts", userService.getClientAccounts());
		return "addProject";
	}

	@RequestMapping("/addproject")
	public String addProject(Project project, String username) {
		projectService.addNewProject(project, username);
		return "redirect:/adminOperations";		//changed adminPage

	}

}
