package com.studs;

import java.io.IOException;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ButtonsController {
	@RequestMapping(value = "Buttons")
	public ModelAndView ButtonsView(HttpServletResponse response) throws IOException {
		ModelAndView model = new ModelAndView();
		model.setViewName("Buttons");
		return model;
	}
}