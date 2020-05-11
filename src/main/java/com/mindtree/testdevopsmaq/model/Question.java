package com.mindtree.testdevopsmaq.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Question {

	@Id
	private int id;
	private String Question;
	@OneToOne
	private Category category;

	public Question() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Question(int id, String question, Category category) {
		super();
		this.id = id;
		Question = question;
		this.category = category;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getQuestion() {
		return Question;
	}

	public void setQuestion(String question) {
		Question = question;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

}
