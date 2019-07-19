package com.virtusa.collegeapp.dao.interfaces;

import java.sql.SQLException;

import com.virtusa.collegeapp.model.Applicant;

public interface ApplicantDao {
	public boolean insertApplicant(Applicant applicant, String id) throws SQLException;
	public boolean updateApplicantStatus(String id, String status) throws SQLException;

Applicant getApplicantDetailsById(String id) throws SQLException;
	}


