package com.studs;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class GeneralController {
	@RequestMapping(value = "General")
	public ModelAndView Translateontype(HttpServletResponse response) throws IOException {
		return new ModelAndView("General");
	}
}

