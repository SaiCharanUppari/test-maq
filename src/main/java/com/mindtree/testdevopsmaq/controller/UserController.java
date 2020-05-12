package com.mindtree.testdevopsmaq.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.mindtree.testdevopsmaq.model.Area;
import com.mindtree.testdevopsmaq.model.Category;
import com.mindtree.testdevopsmaq.model.Project;
import com.mindtree.testdevopsmaq.model.Question;
import com.mindtree.testdevopsmaq.model.User;
import com.mindtree.testdevopsmaq.repository.AreaRepository;
import com.mindtree.testdevopsmaq.repository.CategoryRepository;
import com.mindtree.testdevopsmaq.repository.FeedbackRepository;
import com.mindtree.testdevopsmaq.repository.ProjectRepository;
import com.mindtree.testdevopsmaq.repository.QuestionRepository;
import com.mindtree.testdevopsmaq.repository.UserRepository;
import com.mindtree.testdevopsmaq.service.AreaService;
import com.mindtree.testdevopsmaq.service.CategoryService;
import com.mindtree.testdevopsmaq.service.FeedbackService;
import com.mindtree.testdevopsmaq.service.ProjectService;
import com.mindtree.testdevopsmaq.service.QuestionService;
import com.mindtree.testdevopsmaq.service.UserService;

@Controller
public class UserController {

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

	/* Start Repo Autowired */

	@Autowired
	UserRepository userRepo;

	@Autowired
	ProjectRepository projectRepo;

	@Autowired
	AreaRepository areaRepo;

	@Autowired
	CategoryRepository categoryRepo;

	@Autowired
	QuestionRepository questionRepo;

	@Autowired
	FeedbackRepository feedbackRepo;

	/* End Repo Autowired */

	@RequestMapping("/getusers")
	public String getAllUsers(Model model) {

		List<User> uList = userRepo.findAll();
		System.out.println(uList.size());

		model.addAttribute("users", uList);

		return "index";

	}

	@RequestMapping(value =  "/getuserprojects/{uid}", method = RequestMethod.POST)
	public String getUserProject(@RequestParam String username, Model model) {

		User user = userRepo.findByUsername(username);
		
		List<Project> epList = projectRepo.findAll();

		List<Project> pList = new ArrayList<>();

		for (Project project : epList) {
			if (project.getAccount().getId() == user.getId())
				pList.add(project);
		}

		System.out.println(pList.size());

		model.addAttribute("projects", pList);

		return "index";

	}

	@RequestMapping("/getareas")
	public String getAreas(Model model) {

		List<Area> aList = areaRepo.findAll();

		System.out.println(aList.size());

		model.addAttribute("areas", aList);

		return "areas";

	}

	@RequestMapping("/getcategories/{aid}")
	public String getAreas(@RequestParam int aid, Model model) {

		List<Category> ecList = categoryRepo.findAll();
//		List<Question> eqList = questionRepo.findAll();

		List<Category> cList = new ArrayList<>();

		for (Category category : ecList) {
			if (category.getArea().getId() == aid)
				cList.add(category);
			
//			for (Question question : eqList) {
//				if(question.getCategory().getId() == category.getId()) {
//					
//				}
//			}
			
		}

		System.out.println(cList.size());

		model.addAttribute("categories", cList);

		return "category";

	}

	@RequestMapping("/getquestions/{cid}")
	public String getQuestions(@PathVariable int cid, Model model) {

		List<Question> eqList = questionRepo.findAll();

		List<Question> qList = new ArrayList<>();

		for (Question question : eqList) {
			if (question.getCategory().getId() == cid)
				qList.add(question);
		}

		System.out.println(qList.size());

		model.addAttribute("questions", qList);

		return "index";

	}

}
