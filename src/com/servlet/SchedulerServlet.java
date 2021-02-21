package com.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.enums.Course;
import com.enums.WeekDay;

/**
 * Servlet implementation class SchedulerServlet
 */
@WebServlet("/SchedulerServlet")
public class SchedulerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SchedulerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		
		HttpSession session = request.getSession(true);
		ArrayList<Course> courses = (ArrayList<Course>)session.getAttribute("courses");
		if(courses == null) {
			courses = new ArrayList<Course>();
		}
		
		Course course = new Course();
		course.setCourseName(request.getParameter("courseName"));
		String[] weekdays = request.getParameterValues("weekday");
		WeekDay[] days = new WeekDay[weekdays.length];
		for(int i = 0; i < weekdays.length; i++) {
			days[i] = WeekDay.valueOf(weekdays[i]);
		}
	
		String[] numbers = {"1", "3", "5"};
		int[] ints = new int[numbers.length];
		for(int i = 0; i < numbers.length; i++) {
			ints[i] = Integer.parseInt(numbers[i]);
		}
		
		course.setOccurences(days);
		course.setProfessor(request.getParameter("professors"));
		course.setRoom_number(request.getParameter("room_number"));
		course.setStartDate(request.getParameter("startDate"));
		course.setTime(request.getParameter("time"));
		
		courses.add(course);
        session.setAttribute("courses", courses);
        System.out.println("courses=" + courses.size());
		
		RequestDispatcher rs = request.getRequestDispatcher("course.jsp");
		rs.forward(request, response);
		
		
	}

}
