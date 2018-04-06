package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.dto.EmployeeVO;

public class EmployeeDAO {

	private EmployeeDAO() {

	}

	private static EmployeeDAO instance = new EmployeeDAO();

	public static EmployeeDAO getInstance() {
		return instance;
	}

	public Connection getConnection() {
		Connection conn = null;

		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource) envContext.lookup("jdbc/myoracle");
			conn = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}

	public int loginCheck(String userid, String pwd, String lev) {
		int result = -1;

		String sql = "select * from employee where userid=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				if (pwd.equals(rs.getString("pwd"))) {
					if (lev.equals(rs.getString("lev"))) {
						result = 2;
						if (lev.equals("B")) {
							result = 3;
						}
					} else { // 권한 틀림
						result = 1;
					}
				} else { // 비밀번호 틀림
					result = 0;
				}
			} else { // 아이디 없음
				result = -1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	public EmployeeVO getEmployee(String userid) {

		String sql = "select * from employee where userid=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		EmployeeVO eVo = new EmployeeVO();
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				eVo.setName(rs.getString("name"));
				eVo.setUserid(rs.getString("userid"));
				eVo.setPwd(rs.getString("pwd"));
				eVo.setLev(rs.getString("lev"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return eVo;
	}

	public int updateEmployee(EmployeeVO eVo) {
		String sql = "update employee set name=?, pwd=?, lev=? where userid=?";

		Connection conn = null;
		PreparedStatement pstmt = null;
		int result = -1;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, eVo.getName());
			pstmt.setString(2, eVo.getPwd());
			pstmt.setString(3, eVo.getLev());
			pstmt.setString(4, eVo.getUserid());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	
	public int addEmployee(EmployeeVO eVo) {
		String sql ="insert into employee values(?,?,?,?)";
		
		String name=eVo.getName();
		String userid = eVo.getUserid();
		String pwd = eVo.getPwd();
		String lev = eVo.getLev();
		
		int result = -1;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,name);
			pstmt.setString(2, userid);
			pstmt.setString(3, pwd);
			pstmt.setString(4, lev);
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}
}
