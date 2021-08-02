package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ReservationDAO {

	   private Connection conn = null;
	   private PreparedStatement psmt = null;
	   private ResultSet rs = null;
	   // DB연동 메소드
	   public void connection() {
	      // 오라클 데이터베이스를 연결하는 클래스파일을 동적 로딩
	      // 동적로딩 : 실행할 때 로드하는 방법
	      try {
	         Class.forName("oracle.jdbc.driver.OracleDriver");
	         // localhost: 오라클 db가 설치된 pc의 ip주소 설정
	         String url = "jdbc:oracle:thin:@localhost:1521:xe";
	         String user = "good";
	         String pass = "1234";

	         // 데이터베이스 연결
	         conn = DriverManager.getConnection(url, user, pass);

	      } catch (ClassNotFoundException e) {
	         System.out.println("ojdbc6.jar파일 혹은 driver경로 확인!");
	         e.printStackTrace();
	      } catch (SQLException e) {
	         System.out.println("DB연동 실패!");
	         e.printStackTrace();
	      }

	   }
	   
	   
	   // 종료 메소드
	   public void close() {
	      
	      try {
	         if(rs != null) {rs.close();}
	         if(psmt!=null) { psmt.close(); }
	         if(conn!=null) { conn.close(); }

	      } catch (SQLException e) {
	         e.printStackTrace();
	      }
	   }
	   
	   // 회원가입 메소드
	   public int reservation(ReservationDTO reservation) {
	        int cnt = 0;
	        
	        try {
	           // DB연동
	           connection();
	          
	           //쿼리 실행
	           String sql = "INSERT INTO RESERVATION VALUES (?,?,?,?,?,?,?,?)";
	          
	           psmt = conn.prepareStatement(sql);
	           
	           
	           // 1번 인덱스 > id
	           // 2번 인덱스 > pw
	      
	           psmt.setString(1, reservation.getId());
	           psmt.setString(2, "1");
	           psmt.setString(3, "1");
	           psmt.setString(3, reservation.getStartDate());
	           psmt.setString(4, reservation.getEndDate());
	           psmt.setString(5, reservation.getCardCo());
	           psmt.setString(6, "100,000");
	         
	           cnt = psmt.executeUpdate();
	        
	     
	        } catch (SQLException e) {
	           e.printStackTrace();
	        } finally {
	           // 무조건 실행하는 구문
	           // 데이터베이스 종료 기능
	           close();
	        
	        } // end
	        
	        return cnt;
	        
	     }
	
	
	
}
