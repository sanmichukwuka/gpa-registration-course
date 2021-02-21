package com.enums;

import java.util.Arrays;

public class Course {

	
	private String courseName;
	private String professor;
	private WeekDay[] occurences; // new weekday[0];
	private String time;
	private String room_number;
	private String startDate;
	
	
	public Course(String courseName, String professor, WeekDay[] occurences, String time, String room_number,
			String startDate) {
		super();
		this.courseName = courseName;
		this.professor = professor;
		this.occurences = occurences;
		this.time = time;
		this.room_number = room_number;
		this.startDate = startDate;
	}


	public Course() {
		super();
		// TODO Auto-generated constructor stub
	}


	public String getCourseName() {
		return courseName;
	}


	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}


	public String getProfessor() {
		return professor;
	}


	public void setProfessor(String professor) {
		this.professor = professor;
	}


	public WeekDay[] getOccurences() {
		return occurences;
	}


	public void setOccurences(WeekDay[] occurences) {
		this.occurences = occurences;
	}


	public String getTime() {
		return time;
	}


	public void setTime(String time) {
		this.time = time;
	}


	public String getRoom_number() {
		return room_number;
	}


	public void setRoom_number(String room_number) {
		this.room_number = room_number;
	}


	public String getStartDate() {
		return startDate;
	}


	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}


	@Override
	public String toString() {
		return "Course [courseName=" + courseName + ", professor=" + professor + ", occurences="
				+ Arrays.toString(occurences) + ", time=" + time + ", room_number=" + room_number + ", startDate="
				+ startDate + "]";
	}
	
	
}
