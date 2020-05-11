package com.mindtree.testdevopsmaq.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mindtree.testdevopsmaq.model.Feedback;
import com.mindtree.testdevopsmaq.repository.AreaRepository;
import com.mindtree.testdevopsmaq.repository.CategoryRepository;
import com.mindtree.testdevopsmaq.repository.FeedbackRepository;
import com.mindtree.testdevopsmaq.repository.ProjectRepository;
import com.mindtree.testdevopsmaq.repository.QuestionRepository;
import com.mindtree.testdevopsmaq.repository.UserRepository;
import com.mindtree.testdevopsmaq.service.FeedbackService;

@Service
public class FeedbackServiceImpl implements FeedbackService {

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

	@Override
	public Feedback addFeedback(Feedback feedback, int uid, int pid, int aid, int cid, int qid, int rid) {

		feedback.setUser(userRepo.findById(uid).get());
		feedback.setProject(projectRepo.findById(pid).get());
		feedback.setArea(areaRepo.findById(aid).get());
		feedback.setCategory(categoryRepo.findById(cid).get());
		feedback.setQuestion(questionRepo.findById(qid).get());
		feedback.setResponse(rid);
		Feedback added = feedbackRepo.save(feedback);

		return added;
	}

}
