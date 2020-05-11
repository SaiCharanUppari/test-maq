package com.mindtree.testdevopsmaq.service;

import com.mindtree.testdevopsmaq.model.Feedback;

public interface FeedbackService {

	Feedback addFeedback(Feedback feedback, int uid, int pid, int aid, int cid, int qid, int rid);

}
