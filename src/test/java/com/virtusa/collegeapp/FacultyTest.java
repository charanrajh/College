package com.virtusa.collegeapp;

import static org.junit.Assert.*;

import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.runners.Parameterized.Parameter;
import org.junit.runners.Parameterized.Parameters;

import com.virtusa.collegeapp.dao.implementation.FacultyImpl;
import com.virtusa.collegeapp.dao.interfaces.FacultyDao;
import com.virtusa.collegeapp.model.Faculty;

public class FacultyTest {
	private static Faculty faculty;

	@Parameter (value=0)
	public String facultyId;
	@Parameter (value=1)
	public String facultyName;
	@Parameter (value=2)
	public String facultyDeptnName;
	@Parameter (value=3)
	public String facultyCourseName;
	@Parameter (value=4)
	public String facultyEmail;
	@Parameter (value=5)
	public Long facultyPhone;
	@Parameter (value=6)
	public Date facultyDob;
	@Parameter (value=7)
	public String facultyQualf;
	@Parameter (value=8)
	public int facultyExp;

	@Parameters
	public static Collection getTestParameters() {
		return Arrays.asList(new Object[][] {{"1234", "charanrajh", "CSE", "B.Tech", "peps@gmail.com", Long.parseLong("9912099157"), Date.valueOf("2017-09-09"), "Ph.D in security", 3}});
	}
	@BeforeClass
	public static void createInstance() {
		faculty = new Faculty();
	}
	@Before
	public void initializeProduct() {
		faculty.setFacultyId(facultyId);
		faculty.setFacultyName(facultyName);
		faculty.setFacultyDeptnName(facultyDeptnName);
		faculty.setFacultyCourseName(facultyCourseName);
		faculty.setFacultyEmail(facultyEmail);
		faculty.setFacultyPhone(facultyPhone);
		faculty.setFacultyDob(facultyDob);
		faculty.setFacultyQualf(facultyQualf);
		faculty.setFacultyExp(facultyExp);

	}
	
	@Test
	  public void testGetetAllFaculties() throws SQLException {
		FacultyDao facultydao = new FacultyImpl();
		List<Faculty> listOfFaculties = new ArrayList<Faculty>();
		listOfFaculties = facultydao.getAllFaculties();
		assertFalse(listOfFaculties.isEmpty());
	}
}

