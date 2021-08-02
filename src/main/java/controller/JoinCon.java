package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberDAO;
import model.MemberDTO;

@WebServlet("/JoinCon")
public class JoinCon extends HttpServlet {

   protected void service(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {

      request.setCharacterEncoding("UTF-8");
      response.setContentType("text/html; charset=UTF-8");
      
      String id = request.getParameter("client_id");
      String pw = request.getParameter("client_pw");
      String tel = request.getParameter("client_tel");
      String email = request.getParameter("client_email");
      String name = request.getParameter("client_name");
      String address = request.getParameter("client_address");

      System.out.println(id);
      System.out.println(pw);
      System.out.println(tel);
      System.out.println(email);
      System.out.println(name);
      System.out.println(address);

      MemberDAO dao = new MemberDAO();
      MemberDTO member = new MemberDTO("admin", id, pw, tel, email, name, address);
      PrintWriter writer = response.getWriter();
      

      int cnt = dao.join(member);

      if (cnt > 0) {

         request.setAttribute("client_id", id);

         writer.println("<script>alert('회원가입완료'); location.href='" + "main.jsp" + "';</script>");
         writer.close();

      } else {
         writer.println("<script>alert('회원가입실패'); location.href='" + "join.jsp" + "';</script>");
         writer.close();

      }

   }

}