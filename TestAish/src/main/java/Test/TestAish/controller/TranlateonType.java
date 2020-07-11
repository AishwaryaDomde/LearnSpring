package Test.TestAish.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TranlateonType {

	@RequestMapping(value = "Translateontype")
	public ModelAndView Translateontype(HttpServletResponse response) throws IOException {
		return new ModelAndView("Translateontype");
	}
}
