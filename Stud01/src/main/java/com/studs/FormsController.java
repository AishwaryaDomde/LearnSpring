package com.studs;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FormsController {
	@RequestMapping(value = "forms")
	public ModelAndView formsviewer(HttpServletResponse response) throws IOException {
		return new ModelAndView("forms");
	}
	@RequestMapping(value = "inputs")
	public ModelAndView inputsviewer(HttpServletResponse response) throws IOException {
		return new ModelAndView("inputs");
	}
	@RequestMapping(value = "Carousle")
	public ModelAndView Carousle(HttpServletResponse response) throws IOException {
		return new ModelAndView("Carousle");
	}
	@RequestMapping(value = "inputgroups")
	public ModelAndView inputgroups(HttpServletResponse response) throws IOException {
		return new ModelAndView("inputgroups");
	}
	@RequestMapping(value = "CustomForms")
	public ModelAndView CustomForms(HttpServletResponse response) throws IOException {
		return new ModelAndView("CustomForms");
	}
}

