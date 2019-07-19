package com.virtusa.collegeapp.dao.implementation;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.virtusa.collegeapp.helpers.MySQLHelper;
import com.virtusa.collegeapp.model.Feedback;
import com.virtusa.collegeapp.dao.interfaces.*;

public class FeedbackImpl implements FeedbackDao {

    private Connection conn = null;
    private PreparedStatement pst = null;
    private CallableStatement callable = null;
    private ResultSet rs = null;
    Feedback feedback;
    
    @Override
    public List<Feedback> getFeedbackDetailsById() throws SQLException {
        conn=MySQLHelper.getConnection();
        List<Feedback> feedbackList=new ArrayList<Feedback>();
        try
        {
            //callable=conn.prepareCall("{call addFeedback(?,?,?)}");
            //ResultSet rs = callable.executeQuery();
            pst = conn.prepareStatement("select name,comment from feedback order by id desc limit 2;");
            rs = pst.executeQuery();
            while(rs.next()) {
            feedback=new Feedback();
            //System.out.println("peepee "+rs.getString(1));
            feedback.setUser_name(rs.getString(1));
            feedback.setComment(rs.getString(2));
            feedbackList.add(feedback);
            }    
            conn.close();
        }catch(SQLException e) {
            System.out.println(e.getMessage());
        }
        finally
        {
            conn.close();
        }
        return feedbackList;        
    }

    @Override
    public boolean insertFeedback(String name, String comment) throws SQLException {
        // TODO Auto-generated method stub
        conn = MySQLHelper.getConnection(); 
        boolean insertStatus = false;
        try
        {
            pst = conn.prepareStatement("insert into feedback (name, comment) values(?,?);");
            pst.setString(1, name);
            pst.setString(2, comment);
            if(pst.executeUpdate()>0)
                insertStatus = true;
        }
        catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
        finally
        {
            conn.close();
        }
        return insertStatus;
    }
}
