package com.virtusa.collegeapp;


import static org.junit.Assert.assertFalse;

import java.sql.Date;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

import org.junit.AfterClass;
import org.junit.Assert;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;
import org.junit.runners.Parameterized.Parameter;
import org.junit.runners.Parameterized.Parameters;

import com.virtusa.collegeapp.dao.implementation.FacultyImpl;
import com.virtusa.collegeapp.dao.implementation.StudentImpl;
import com.virtusa.collegeapp.dao.interfaces.FacultyDao;
import com.virtusa.collegeapp.dao.interfaces.StudentDao;
import com.virtusa.collegeapp.model.Faculty;
import com.virtusa.collegeapp.model.Student;

@RunWith(value=Parameterized.class)
public class StudentTest {
	private static Student student;

	@Parameter (value=0)
	public String stdId;
	@Parameter (value=1)
	public String stdName;
	@Parameter (value=2)
	public String stdDeptName;
	@Parameter (value=3)
	public int stdSem;
	@Parameter (value=4)
	public String stdCourseName;
	@Parameter (value=5)
	public String stdEmail;
	@Parameter (value=6)
	public Long stdPhone;
	@Parameter (value=7)
	public Date stdDOB;

	@Parameters
	public static Collection getTestParameters() {
		return Arrays.asList(new Object[][] {{"1234", "charanrajh", "CSE",Integer.parseInt("5"), "B.Tech", "peps@gmail.com", Long.parseLong("9912099157"), Date.valueOf("2017-09-09")}});
	}
	@BeforeClass
	public static void createInstance() {
		student=new Student();
	}
	@Before
	public void initializeProduct() {
		student.setStdId(stdId);
		student.setStdName(stdName);
		student.setStdDeptName(stdDeptName);
		student.setStdSem(stdSem);
		student.setStdCourseName(stdCourseName);
		student.setStdEmail(stdEmail);
		student.setStdPhone(stdPhone);
		student.setStdDOB(stdDOB);

	}

	@Test
	public void testStudentDOB() {
		Assert.assertTrue(student.getStdDOB().getYear()<119);
	}

	@Test
	public void testSqlEception(){
		StudentDao studentDao = new StudentImpl();
		boolean thrown=false;
		try {
			System.out.println(studentDao.getStudentDetailsById("1234"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			thrown=true;
		}
		Assert.assertTrue(thrown);

	}

	@Test
	public void testGetetAllStudents() throws SQLException {
		StudentDao studentdao = new StudentImpl();
		List<Student> listOfStudents = new ArrayList<Student>();
		listOfStudents = studentdao.getAllStudents();
		assertFalse(listOfStudents.isEmpty());

	}

}








