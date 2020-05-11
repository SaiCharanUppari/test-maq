package com.mindtree.testdevopsmaq.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mindtree.testdevopsmaq.model.Area;

@Repository
public interface AreaRepository extends JpaRepository<Area, Integer>{

}
