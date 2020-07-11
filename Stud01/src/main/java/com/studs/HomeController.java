package com.studs;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	@RequestMapping(value="/",method=RequestMethod.GET)
	public ModelAndView view() {
		ModelAndView model = new ModelAndView();
		model.setViewName("home");
		return model;
	}
	@Autowired
    ResourceLoader resourceLoader;
	
	@RequestMapping(value="fetchView", method = RequestMethod.GET)
	@ResponseBody 
	public String View(HttpServletRequest request,HttpServletResponse response) throws IOException {
		
		Resource resource = resourceLoader.getResource("JSON/Graph1.json");
		File file = resource.getFile();
		System.out.println("File Found : " + file.exists());
		String content = new String(Files.readAllBytes(file.toPath()));	//Read File Content
//		System.out.println(content);
		return content;	
	}
	@RequestMapping(value="fetchView2", method = RequestMethod.GET)
	@ResponseBody 
	public String View2(HttpServletRequest request,HttpServletResponse response) throws IOException {
		Resource resource = resourceLoader.getResource("JSON/Graph2.json");
		File file1 = resource.getFile();
		System.out.println("File Found2 : " + file1.exists());
		String content1 = new String(Files.readAllBytes(file1.toPath()));	//Read File Content
//		System.out.println(content);
		return content1;	
	}
}
