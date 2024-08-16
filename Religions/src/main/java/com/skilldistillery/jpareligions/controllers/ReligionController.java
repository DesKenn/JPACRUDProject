package com.skilldistillery.jpareligions.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.jpareligions.dao.ReligionDAO;
import com.skilldistillery.jpareligions.entities.Religion;

@Controller
public class ReligionController {
		
		@Autowired
		private ReligionDAO dao;
		
		@RequestMapping(path = {"/", "home.do"})
		public String home(Model model) {
			List<Religion> allReligions = dao.findAll();
			model.addAttribute("religions", allReligions);
		
			return "home";
		}
}
