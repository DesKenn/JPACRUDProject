package com.skilldistillery.jpareligions.dao;

import java.util.List;

import com.skilldistillery.jpareligions.entities.Religion;

public interface ReligionDAO {
	Religion fimdById(int religionid);
	List<Religion> findAll();
	Religion create(Religion newReligion);
	Religion update(int religionID, Religion religion);
	boolean deleteById(int religionId);
}
