package com.skilldistillery.jpareligions.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpareligions.entities.Religion;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

@Service
@Transactional
public class ReligionDAOImpl implements ReligionDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public Religion fimdById(int religionId) {
		
		return em.find(Religion.class, religionId);
	}

	@Override
	public List<Religion> findAll() {
		
		String query = "SELECT name FROM Religion name";
		return em.createQuery(query,Religion.class).getResultList();
	}

	@Override
	public Religion create(Religion newReligion) {
		
		em.persist(newReligion);
		em.flush();
		return newReligion;
	
	}

	@Override
	public Religion update(int religionID, Religion religion) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteById(int religionId) {
		// TODO Auto-generated method stub
		return false;
	}

}
