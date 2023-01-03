package com.sani.cubic.MySpringBoot02.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.sani.cubic.MySpringBoot02.dto.CustomerSignup;

@Controller
public class MyApplicationContrller {
	
	@GetMapping("/")
	public String customerHomePage() {
		
		return "customer-home-page";
	}
	
	@GetMapping("/signup")
	public String signupPage(){
		
		return "sign-up-page";
	}
	
	@PostMapping("/signup01")
	public void insertSignupData(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		resp.setContentType("text/html");//header of response
		PrintWriter body =resp.getWriter();//body of response
		
		//Fetching or get Data from the form
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String email = req.getParameter("email");
		String mobile = req.getParameter("mobile");
		
		String gender = req.getParameter("gender");
		String address = req.getParameter("address");
		String image = req.getParameter("image");
		
		List<CustomerSignup> signups = new ArrayList<CustomerSignup>();
		
		try {
			//Step 1: loading the driver
			Class.forName("com.mysql.jdbc.Driver");
			
			//Maing connection to the DataBase
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cubic9001", "root", "sani123");
			//jdbc:mysql://localhost:3306/Peoples?autoReconnect=true&useSSL=false
			if (conn!= null) {
				System.out.println("I am connected to the data base");
			}
			//Pushing the Data that we from the form to the Data Base table.
			String sql = "insert into signup_tbl(username, password, email, mobile, image, gender, address)" +"values(?,?,?,?,?,?,?)";
			//creating prepare statement
			PreparedStatement preparedStatement = conn.prepareStatement(sql);
			
			preparedStatement.setString(1, username);
			preparedStatement.setString(2, password);
			preparedStatement.setString(3, email);
			preparedStatement.setString(4, mobile);
			preparedStatement.setString(5, image);
			preparedStatement.setString(6, gender);
			preparedStatement.setString(7, address);
			//Timestamp timestamp = new Timestamp(new Date().getTime());
			//preparedStatement.setTimestamp(8, timestamp);
			
			
			
			//fire the query
			preparedStatement.executeUpdate();
			
			System.out.println("Data is inserted");
			//Code to fetch data from the data base
			
			sql = "select sid, username, password, email, mobile, image, gender, address from signup_tbl";
			//compile the query
			preparedStatement = conn.prepareStatement(sql);
			//now execute the query and store or set it to the ResultSet
			ResultSet rs= preparedStatement.executeQuery(sql);
			
			while (rs.next()) {
				//one row setting it to one signup
				CustomerSignup signup = new CustomerSignup(rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8));
				signup.setSid(rs.getInt(1));
				//adding one signup object into the list
				signups.add(signup);
			}
			
			
		
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
		//Stroing data inside static list
		//SignupStore.data.add(customerSignup);
		
		//adding the list to the request scope so we can fetch it from the jsp.
		//request is a map which gets has key and value.
		req.setAttribute("data", signups);
		req.getRequestDispatcher("signups.jsp").forward(req, resp);
		
	

	/*
	*
	*Created By Abdul Sani Khusravi On Jan 2, 2023  6:54:49 PM
	*/}

}
