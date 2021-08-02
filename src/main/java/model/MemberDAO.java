package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;


public class MemberDAO {

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
   
   
   // 로그인 체크 메소드
   public MemberDTO loginCheck(String id, String pw) {
      
      MemberDTO member = null;
      
      try {
         // DB 연결 기능
         connection();
         
         //쿼리 실행
         String sql = "select * from client_ where client_id=? and client_pw=?";
         
         psmt = conn.prepareStatement(sql);
         
         // 1번 인덱스 > email
         // 2번 인덱스 > pw
         psmt.setString(1, id);
         psmt.setString(2, pw);
         
         // 중요
         // insert, update, delete : executeUpdate() 메소드 사용 -> DB의 내용 변경시
         // select : executeQuery() -> DB에 내용을 검색할 때
         rs = psmt.executeQuery();
         
         // next() : 다음 행으로 넘어가서 데이터 존재여부 판단(true/false)
         if(rs.next()) { // select한 데이터가 있다면
        	String getId = id;
            String getPw = rs.getString(3);
            String getTel = rs.getString(4);
            String getEmail = rs.getString(5);
            String getAddress = rs.getString(6);
      
            member = new MemberDTO(getId, getPw, getTel, getEmail, getAddress);
         }
         
      
      } catch (SQLException e) {
         // DB 예외처리
         System.out.println("sql문 오류 발생");
         e.printStackTrace();
      } finally {
         // 무조건 실행하는 구문
         close();
      } // end
      
      return member;
      
      
      
   }
   
	
   // 회원가입 메소드
 public int join(MemberDTO member) {
      int cnt = 0;
      
      try {
         // DB연동
         connection();
        
         //쿼리 실행
         String sql = "INSERT INTO client_ VALUES ('admin',?,?,?,?,?,?)";
        
         psmt = conn.prepareStatement(sql);
         
         
         // 1번 인덱스 > id
         // 2번 인덱스 > pw
    
         psmt.setString(1, member.getId());
         psmt.setString(2, member.getPw());
         psmt.setString(3, member.getTel());
         psmt.setString(4, member.getEmail());
         psmt.setString(5, member.getName());
         psmt.setString(6, member.getAddress());
       
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
   
   // 정보 수정 메소드
   public int Update(MemberDTO member) {
      
      int cnt =0;
      
      try {
         // DB연동
         connection();
         
         //쿼리 실행
         String sql = "UPDATE client_ SET client_PW=?, client_TEL=?, client_EMAIL=?, client_ADDRESS=? where client_ID=?";
      System.out.print("1");
         psmt = conn.prepareStatement(sql);
      
         // 1번 인덱스 > id
         // 2번 인덱스 > pw
         psmt.setString(1, member.getPw());
         psmt.setString(2, member.getTel());
         psmt.setString(3, member.getEmail());
         psmt.setString(4, member.getAddress());
         psmt.setString(5, member.getId());
      
         cnt = psmt.executeUpdate();
         
      
      } catch (SQLException e) {
         e.printStackTrace();
         
         
      } finally {
         close();
      } // end
      
      return cnt;
      
   }
   
   // 전체 회원정보 조회 메소드(관리자: 회원삭제)
   public ArrayList<MemberDTO> select() {
      
      ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
      MemberDTO member = null;
      
      try {
         // DB 연결 메소드 호출
         connection();
         
         //쿼리 실행
         String sql = "select * from client";
         
         psmt = conn.prepareStatement(sql);
         
         // 중요
         // insert, update, delete : executeUpdate() 메소드 사용 -> DB의 내용 변경시
         // select : executeQuery() -> DB에 내용을 검색할 때
         rs = psmt.executeQuery();
         
         // 모든 회원들의 정보를 가져오기 위해 반복문 활용
         while(rs.next()) { 
            // 컬럼 인덱스
            String getId = rs.getString(1);
            String getTel = rs.getString(3);
            String getEmail = rs.getString(4);
            String getName = rs.getString(5);
            String getAddress = rs.getString(6);
      
            // 각각의 회원들의 정보를 member에 담고
            member = new MemberDTO(null, getId,null, getTel, getEmail, getName, getAddress);
            // 모든 회원들의 정보를 리스트에 담기
            list.add(member);
         }
         
      
      } catch (SQLException e) {
         // DB 예외처리
         System.out.println("sql문 오류 발생");
         e.printStackTrace();
      } finally {
         close();
      } 
      
      return list;
      
      
      
   }
   
   // 정보 삭제 메소드
      public int Delete(String id) {
         
         int cnt =0;
         
         try {
            // DB연동
            connection();
            
            //쿼리 실행
            String sql = "delete from client where id=?";
         
            psmt = conn.prepareStatement(sql);
         
            psmt.setString(1, id);
         
            cnt = psmt.executeUpdate();
            
         
         } catch (SQLException e) {
            e.printStackTrace();
            
            
         } finally {
            close();
         } // end
         
         return cnt;
         
   }
      
   // 아이디 체크 메소드
   public boolean idCheck(String ID) {
      
      boolean check = false;

      try {
         // DB 연결 기능
         connection();

         // 쿼리 실행
         String sql = "select * from client where ID=?";

         psmt = conn.prepareStatement(sql);

         psmt.setString(1, ID);

         rs = psmt.executeQuery();

         // next() : 다음 행으로 넘어가서 데이터 존재여부 판단(true/false)
         if (rs.next()) { // select한 데이터가 있다면
            check = true; // 아이디가 중복되어 사용할 수 없음
         }else {
            check = false; // 중복되는 아이디가 없어 사용 가능한 아이디!
         }

      } catch (SQLException e) {
         // DB 예외처리
         System.out.println("sql문 오류 발생");
         e.printStackTrace();
      } finally {
         // 무조건 실행하는 구문
         close();
      } // end

      return check;

   }
}