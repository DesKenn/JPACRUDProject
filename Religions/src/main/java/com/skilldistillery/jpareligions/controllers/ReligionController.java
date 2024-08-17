package com.skilldistillery.jpareligions.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
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

	@RequestMapping(path = { "/", "home.do" })
	public String home(Model model) {
		List<Religion> allReligions = dao.findAll();
		model.addAttribute("religions", allReligions);

		return "home";
	}
//
	@RequestMapping(path = { "showReligion.do" })
	public ModelAndView findById(@RequestParam("religionId") int religionId) {
		ModelAndView mv = new ModelAndView();

		Religion foundReligion = dao.findById(religionId);

		if (foundReligion == null) {
			mv.addObject("message", "Religion not found with ID: " + religionId);
			mv.setViewName("error");
		} else {
			mv.addObject("religion", foundReligion);
			mv.setViewName("showReligion");

		}
		return mv;
	}
//
	@RequestMapping(path = { "success.do" }, method = RequestMethod.POST)
	public ModelAndView newReligion(Religion religion) {
		
		ModelAndView mv = new ModelAndView();
		try {
		dao.create(religion);
		mv.setViewName("success");
		} catch (Exception e) {
			
		mv.addObject("message", "Failed to add the Religion");
		mv.setViewName("error");
	}
		return mv;
	}

	@RequestMapping(path = "delete.do", method = RequestMethod.POST)
	public ModelAndView deleteReligion(@Validated int religionId) {
		
		ModelAndView mv = new ModelAndView();
		Religion religion = dao.findById(religionId);

		if (religion == null) {
			mv.addObject("message", "Religion not found with ID: " + religionId);
			mv.setViewName("error");
		} else {
			boolean deleted = dao.deleteById(religionId);
			if (!deleted) {
				mv.addObject("message", "Failed to delete the religion");
				mv.setViewName("error");

			} else {
				mv.addObject("message", "Religion deleted successfully");
				mv.setViewName("success");
			}

		}

		return mv;

		}
	@RequestMapping(path = "updateReligion.do", method = RequestMethod.POST)
	public ModelAndView updateReligion(@ModelAttribute("religion") int religionId, Religion religion) {
		ModelAndView mv = new ModelAndView();

		try {		
			Religion updatedReligion =  dao.update(religionId, religion);
			if (updatedReligion != null) {
				mv.addObject("religion", updatedReligion);
				mv.setViewName("updateReligion.jsp");
			} else {
				mv.addObject("message", "Failed to update the Religion.");
				mv.setViewName("error");
			}
		} catch (Exception e) {
			mv.addObject("message", "Error occurred while updating the Religion.");
			mv.setViewName("error");
			e.printStackTrace();
		}

		return mv;
	}

	}


