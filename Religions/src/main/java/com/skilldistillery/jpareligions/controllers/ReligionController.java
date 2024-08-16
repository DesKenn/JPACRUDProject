package com.skilldistillery.jpareligions.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.jpareligions.dao.ReligionDAO;

@Controller
public class ReligionController {
		
		@Autowired
		private ReligionDAO dao;
		
		@RequestMapping(path = {"/", "home.do"})
		public String home() {
			
		
			return "home";
		}
}
