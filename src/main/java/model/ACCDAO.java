package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

//DB에 있는 값을 가져와 DTO 객체로 내보내기 위한 DAO
public class ACCDAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	ResultSet rs = null;

	
	public void conn() {

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "good";
			String db_pw = "1234";
			conn = DriverManager.getConnection(db_url, db_id, db_pw);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	public void close() {

		try {
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
			if (rs != null) {
				rs.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
	
	
	
	public ArrayList<ACCDTO> getACC_info(){
		
		ACCDTO ACC_dto = null;
		ArrayList<ACCDTO> ACC_info = new ArrayList<ACCDTO>();
		
		conn();
		
		try {
			String sql = "select * from ACCOMODATION";
			psmt=conn.prepareStatement(sql);
			rs=psmt.executeQuery();
			
			while(rs.next()) {
				String address=rs.getString(3);
				String name= rs.getString(4);
				String tell = rs.getString(5);
				
				System.out.println(address);
				System.out.println(name);
				System.out.println(tell);
				
				
				ACC_dto=new ACCDTO(name, address, tell);
				ACC_info.add(ACC_dto);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		finally {
			close();
		}
	
		return ACC_info;
	}
	
	
	
	

	public ArrayList<ACCDTO> getACC_info1(String acc_name){
		
		ACCDTO ACC_dto = null;
		ArrayList<ACCDTO> ACC_info = new ArrayList<ACCDTO>();
		
		conn();
		
		try {
			String sql = "select * from ACCOMODATION WHERE ACC_NAME = ?";
			psmt=conn.prepareStatement(sql);
			

			psmt.setString(1, acc_name);

			
			rs=psmt.executeQuery();
			
			
			while(rs.next()) {
				String address=rs.getString(3);
				String name= rs.getString(4);
				String tell = rs.getString(5);
				
				System.out.println(address);
				System.out.println(name);
				System.out.println(tell);
				
				
				ACC_dto=new ACCDTO(name, address, tell);
				ACC_info.add(ACC_dto);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		finally {
			close();
		}
	
		return ACC_info;
	}
	
	
	/*
	 * public ArrayList<ACCDTO> address() { ACCDTO ACC_dto = null;
	 * 
	 * 
	 * 
	 * }
	 */
	
}
