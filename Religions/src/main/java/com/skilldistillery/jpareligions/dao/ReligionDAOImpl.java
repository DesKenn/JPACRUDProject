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
	public Religion findById(int religionId) {
		
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
	public Religion update(int religionId, Religion religion) {
Religion newReligion = em.find(Religion.class, religionId);
		
		if(newReligion != null){
			newReligion.setName(newReligion.getName());
			newReligion.setOrigin(newReligion.getOrigin());
			newReligion.setDescription(newReligion.getDescription());
			newReligion.setBeliefs(newReligion.getBeliefs());
			newReligion.setDateEstablished(newReligion.getDateEstablished());
			newReligion.setFounder(newReligion.getFounder());
			newReligion.setIdolOfWorship(newReligion.getIdolOfWorship());
			newReligion.setNumOfFollowers(newReligion.getNumOfFollowers());
			
		}
		em.persist(newReligion);
		em.flush();

		return newReligion;

	}	

	@Override
	public boolean deleteById(int religionId) {
	boolean deleted = false;
		
		Religion religion = em.find(Religion.class, religionId);
		
		if (religion != null) {
			em.remove(religion);
			deleted = true;
		}
		return deleted;
	
	}

}
