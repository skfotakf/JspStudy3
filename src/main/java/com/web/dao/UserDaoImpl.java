package com.web.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.web.db.DBConnectionMgr;

public class UserDaoImpl implements UserDao{
	private DBConnectionMgr pool = null;
	
	public UserDaoImpl() {
		pool = DBConnectionMgr.getInstance();
	}

	@Override
	public String getUserName(String id, String password) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		String name = null;
				
		try {
			con = pool.getConnection();
			sql = "select user_name from user_mst where user_id = ? and user_password = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, password);
			rs = pstmt.executeQuery();
			
			rs.next();
			name = rs.getString(1);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		
		return name;
	}
	
	
}
