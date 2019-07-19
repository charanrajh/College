package com.virtusa.collegeapp.dao.interfaces;

import java.sql.SQLException;
import java.util.List;

import com.virtusa.collegeapp.model.Alumni;
import com.virtusa.collegeapp.model.Applicant;

public interface AlumniDao {
	
	public boolean insertAlumni(Alumni alumni) throws SQLException;
	public List<Alumni> getAlumniDetails(String name) throws SQLException;
}
