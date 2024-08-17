package com.skilldistillery.jpareligions.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.jpareligions.dao.ReligionDAO;
import com.skilldistillery.jpareligions.entities.Religion;

@Controller
public class ReligionController {
		
		@Autowired
		private ReligionDAO dao;
//		
//		Religion update(int religionID, Religion religion);
//		boolean deleteById(int religionId);
	
		
		@RequestMapping(path = {"/", "home.do"})
		public String home(Model model) {
			List<Religion> allReligions = dao.findAll();
			model.addAttribute("religions", allReligions);
		
			return "home";
		}
		
		@RequestMapping(path = {"showReligion.do"})
		public ModelAndView findById(@RequestParam("religionId")int religionId)  {
			 ModelAndView mv = new ModelAndView();
				Religion foundReligion = dao.findById(religionId);
				mv.addObject("religion", foundReligion);
				mv.setViewName("showReligion");
				
				return mv;
				
			}
		@RequestMapping(path = {"showReligion.do"},method = RequestMethod.POST)
		  public ModelAndView newReligion(Religion religion) {
		    dao.create(religion);
		    ModelAndView mv = new ModelAndView();
		    mv.setViewName("show");
		    return mv;
		  }
		
		
	
		
}
