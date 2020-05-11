package com.mindtree.testdevopsmaq.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Category {

	@Id
	private int id;
	private String categoryName;
	@ManyToOne
	private Area area;

	public Category() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Category(int id, String categoryName, Area area) {
		super();
		this.id = id;
		this.categoryName = categoryName;
		this.area = area;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public Area getArea() {
		return area;
	}

	public void setArea(Area area) {
		this.area = area;
	}

}
