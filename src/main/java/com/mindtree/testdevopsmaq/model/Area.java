package com.mindtree.testdevopsmaq.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Area {

	@Id
	private int id;
	private String areaName;

	public Area() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Area(int id, String areaName) {
		super();
		this.id = id;
		this.areaName = areaName;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAreaName() {
		return areaName;
	}

	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}

}
