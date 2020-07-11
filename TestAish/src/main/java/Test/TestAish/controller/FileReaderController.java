package Test.TestAish.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
@Controller
public class FileReaderController {

	@Autowired
    ResourceLoader resourceLoader;
	
	@RequestMapping(value="fetchView", method = RequestMethod.GET)
	@ResponseBody 
	public String View(HttpServletRequest request,HttpServletResponse response) throws JSONException, IOException {
		Resource resource = resourceLoader.getResource("resources/JSON/Graph1.json");
		File file = resource.getFile();
		System.out.println("File Found : " + file.exists());
		String content = new String(Files.readAllBytes(file.toPath()));	//Read File Content
//		System.out.println(content);
		return content;	
	}
}
