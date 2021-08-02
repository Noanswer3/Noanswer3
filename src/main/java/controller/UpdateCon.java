package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDAO;
import model.MemberDTO;

@WebServlet("/UpdateCon")
public class UpdateCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	      request.setCharacterEncoding("UTF-8");
	      response.setContentType("text/html; charset=UTF-8");
		
		// ���ǿ� ����Ǿ� �ִ� MemberDTO��ü�� ���� -> �̸�������
		HttpSession session = request.getSession();
		MemberDTO member = (MemberDTO)session.getAttribute("member");
		String id = (String)session.getAttribute("id");
		
		
		  String pw = request.getParameter("update_pw"); 
		  String tel = request.getParameter("update_tel"); 
		  String email = request.getParameter("update_email");
		  String address = request.getParameter("update_address");

		MemberDTO member2 = new MemberDTO(id, pw, tel,email,address);
		MemberDAO dao = new MemberDAO();
		PrintWriter writer = response.getWriter();
		
		System.out.println(pw);
		System.out.println(tel);
		System.out.println(email);
		System.out.println(address);

		int cnt = dao.Update(member2);
		
		System.out.print("cnt");
		 if(cnt >0) {
			 // ���ǿ��� ������ ������ ����
			 session.setAttribute("member", member2);
			 response.sendRedirect("main.jsp");
			 
			 writer.println("<script>alert('회원정보수정완료!'); location.href='" + "main.jsp" + "';</script>");
	         writer.close();
		 }else {
			 response.sendRedirect("my_update.jsp");
			 
			 
			 writer.println("<script>alert('회원정보수정실패!'); location.href='" + "my_update.jsp" + "';</script>");
	         writer.close();
		 }
		 
	}

	}
