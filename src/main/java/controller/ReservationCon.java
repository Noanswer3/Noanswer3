package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.ReservationDAO;
import model.ReservationDTO;

@WebServlet("/ReservationCon")
public class ReservationCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	      request.setCharacterEncoding("EUC-KR");
	      
	      System.out.println("Dsadasd");
	      
	      HttpSession session = request.getSession();
	      
	      // 이메일, 패스워드, 전화번호, 주소 가져오기
	      String id = (String)session.getAttribute("id");
	      String startDate = request.getParameter("startDate");
	      String endDate = request.getParameter("endDate");
	      String room = request.getParameter("room");
	      String aNumber = request.getParameter("aNumber");
	      String cNumber = request.getParameter("cNumber");
	      String pNumber = "(" + aNumber + " / " + cNumber + ")";
	      String cardCo = request.getParameter("cardCo");
	      String cardNumber1 = request.getParameter("cardNumber1");
	      String cardNumber2 = request.getParameter("cardNumber2");
	      String cardNumber3 = request.getParameter("cardNumber3");
	      String cardNumber4 = request.getParameter("cardNumber4");
	      String cardNumber = cardNumber1 + "-"+ cardNumber2 + "-" + cardNumber3 + "-" + cardNumber4;
	      
	      ReservationDAO dao = new ReservationDAO();
	      ReservationDTO dto = new ReservationDTO(id, startDate, endDate, room, pNumber, cardCo, cardNumber);
	      
	      
	
	}

}
