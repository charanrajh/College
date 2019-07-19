package com.virtusa.collegeapp.dao.interfaces;

import java.sql.SQLException;
import java.util.List;
import com.virtusa.collegeapp.model.Feedback;

public interface FeedbackDao {
    List<Feedback> getFeedbackDetailsById() throws SQLException;
    public boolean insertFeedback(String name, String comment) throws SQLException;
}