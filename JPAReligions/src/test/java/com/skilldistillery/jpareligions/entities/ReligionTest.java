package com.skilldistillery.jpareligions.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

class ReligionTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Religion religion;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
	    emf = Persistence.createEntityManagerFactory("Religions");

	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
	    emf.close();

	}

	@BeforeEach
	void setUp() throws Exception {
		 em = emf.createEntityManager();
		    religion = em.find(Religion.class, 1);

	}

	@AfterEach
	void tearDown() throws Exception {
	    em.close();

	}

	@Test
	void test() {
		assertNotNull(religion);
		assertEquals("Buddhism", religion.getName());
		}

}
