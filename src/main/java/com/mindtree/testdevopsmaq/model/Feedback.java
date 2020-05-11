package com.mindtree.testdevopsmaq.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity
public class Feedback {

	@Id
	private int id;
	@OneToOne
	private User user;
	@OneToOne
	private Project project;
	@ManyToOne
	private Area area;
	@ManyToOne
	private Category category;
	@OneToOne
	private Question question;
	private int response;
	private String remarks;

	public Feedback() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Feedback(int id, User user, Project project, Area area, Category category, Question question, int response,
			String remarks) {
		super();
		this.id = id;
		this.user = user;
		this.project = project;
		this.area = area;
		this.category = category;
		this.question = question;
		this.response = response;
		this.remarks = remarks;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Project getProject() {
		return project;
	}

	public void setProject(Project project) {
		this.project = project;
	}

	public Area getArea() {
		return area;
	}

	public void setArea(Area area) {
		this.area = area;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Question getQuestion() {
		return question;
	}

	public void setQuestion(Question question) {
		this.question = question;
	}

	public int getResponse() {
		return response;
	}

	public void setResponse(int response) {
		this.response = response;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

}
