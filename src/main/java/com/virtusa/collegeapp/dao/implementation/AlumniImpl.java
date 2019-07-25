package com.virtusa.collegeapp.dao.implementation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.virtusa.collegeapp.dao.interfaces.AlumniDao;
import com.virtusa.collegeapp.helpers.MySQLHelper;
import com.virtusa.collegeapp.model.Alumni;

public class AlumniImpl implements AlumniDao {
	private Connection conn;
	boolean alumniStatus = false;
	private PreparedStatement pre;
	private List<Alumni> matchedAlumni;
	
	@Override
	public boolean insertAlumni(Alumni alumni) throws SQLException {
		/* This method inserts the new alumni member into the database and returns true if successful else false */
		conn = MySQLHelper.getConnection();
		try {
			pre = conn.prepareStatement("insert into alumni(alumni_id,name,yop,course,branch,password,email,phone)values(?,?,?,?,?,?,?,?);");
			
			pre.setString(1, alumni.getId());
			pre.setString(2, alumni.getName());
			pre.setString(3, alumni.getYop());
			pre.setString(4,alumni.getCourse() );
			pre.setString(5,alumni.getBranch());
			pre.setString(6,alumni.getPassword() );
			pre.setString(7,alumni.getEmail() );
			pre.setLong(8, alumni.getPhone());
		
			int queryExecStatus = pre.executeUpdate();
			pre = conn.prepareStatement("insert into login values(?,?,?);");
			pre.setString(1, alumni.getId());
			pre.setString(2, alumni.getPassword());
			pre.setString(3, "alumni");
			pre.execute();
			//System.out.println("alumni trigger");
			if(queryExecStatus>0)
				alumniStatus = true;
		} catch (SQLException e) {
			//System.out.println(e.getMessage());
		}finally {
			conn.close();
		}
		
		return alumniStatus;
	}
	@Override
	public List<Alumni> getAlumniDetails(String name) throws SQLException {
		/* This method returns all the alumni members of the college as a list */
		conn=MySQLHelper.getConnection();
		matchedAlumni = new ArrayList<Alumni>();
		Alumni alumni = null;
		try {
			pre=conn.prepareStatement("select * from alumni where name=?;");
			pre.setString(1,name);
			ResultSet rs = pre.executeQuery();
			while(rs.next()) {
				alumni = new Alumni();
				alumni.setId(rs.getString("alumni_id"));
				alumni.setName(rs.getString("name"));
				alumni.setYop(rs.getString("yop"));
				alumni.setBranch(rs.getString("branch"));
				alumni.setCourse(rs.getString("course"));
				alumni.setPhone(Long.parseLong(Integer.toString(rs.getInt("phone"))));
				alumni.setEmail(rs.getString("email"));
				matchedAlumni.add(alumni);			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());
		}
		
		finally {
			conn.close();
		}
	
		return matchedAlumni;
	}
}
