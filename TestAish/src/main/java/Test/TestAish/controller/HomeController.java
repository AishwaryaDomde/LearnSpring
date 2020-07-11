package Test.TestAish.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import Test.TestAish.config.MvcConfiguration;

@Repository
@Controller
public class HomeController {
	@Autowired
	MvcConfiguration mvc;

	@RequestMapping(value = "/")
	public ModelAndView test(HttpServletResponse response) throws IOException {
		return new ModelAndView("home");
	}
	/***************************************************************************************************/
	@RequestMapping(value = { "/GetData" }, method = RequestMethod.POST, produces = {
			"application/json; charset=UTF-8" })
	@ResponseBody
	public String GetData(HttpServletRequest request, HttpServletResponse res) {
		System.out.println("/GetData");
		String strTemp = "";
		BufferedReader br = null;
		StringBuilder stringBuilder = new StringBuilder();
		try {
			URL url = new URL("https://s3.ap-south-1.amazonaws.com/ss-local-files/products.json");
			br = new BufferedReader(new InputStreamReader(url.openStream()));
			while (null != (strTemp = br.readLine())) {
				stringBuilder.append(strTemp);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return stringBuilder.toString();
	}

	/**
	 * * @throws SQLException
	 **********************************************************/
	@RequestMapping(value = "/SetData", method = RequestMethod.POST, consumes = "application/json")
	@ResponseBody
	public String SetData(HttpServletRequest request, HttpServletResponse response,
			@RequestBody String dataJsonObj) throws JSONException {

		JSONObject obj = new JSONObject(dataJsonObj);
		String DataListed = obj.getString("Prodct");
		String gData = (DataListed.substring(1, DataListed.length() - 1));
		String SaveList = (gData.replace("[", "(").replace("]", ")").replaceAll("\"", "\'"));
		String sql = "INSERT INTO datalist ( subcat, title, price, popularity)" + " VALUES" + SaveList;
		int isSave = 0;
		String Result="Error";
		Connection Connection;
		try {
			Connection = (mvc.getDataSource().getConnection());
			Statement preparedStmt = Connection.createStatement();
			isSave = preparedStmt.executeUpdate(sql);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		if(isSave>0) {
			Result="Success";
		}
		return Result ;
	}
}
