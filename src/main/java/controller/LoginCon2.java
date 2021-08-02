package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDAO;
import model.MemberDTO;

@WebServlet("/LoginCon2")
public class LoginCon2 extends HttpServlet {

   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      String id = request.getParameter("client_id");
      String pw = request.getParameter("client_pw");

      MemberDAO dao = new MemberDAO();
      MemberDTO client = dao.loginCheck(id, pw);

      if (client != null) { 

         HttpSession session = request.getSession();
         session.setAttribute("id", id);
         session.setAttribute("pw", pw);
         session.setAttribute("member", client);
         response.sendRedirect("healing.jsp");

      } else {
         response.sendRedirect("login.jsp");
      }

   }

}