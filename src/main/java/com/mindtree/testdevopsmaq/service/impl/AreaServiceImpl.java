package com.mindtree.testdevopsmaq.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mindtree.testdevopsmaq.model.Area;
import com.mindtree.testdevopsmaq.repository.AreaRepository;
import com.mindtree.testdevopsmaq.service.AreaService;

@Service
public class AreaServiceImpl implements AreaService {
	
	@Autowired
	AreaRepository areaRepo;

	@Override
	public Area addArea(Area area) {
		Area added = areaRepo.save(area);
		return added;
	}

}
