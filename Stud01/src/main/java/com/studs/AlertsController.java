package com.studs;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AlertsController {
@RequestMapping(value="Alerts")
public ModelAndView AlertView(HttpServletResponse servlet)throws IOException {
	ModelAndView model = new ModelAndView();
	model.setViewName("Alerts");
	return model;
}
}
