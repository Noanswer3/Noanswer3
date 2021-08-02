package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import model.ACCDAO;
import model.ACCDTO;


@WebServlet("/ACC_info")
public class ACC_info extends HttpServlet {
	

	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		JsonArray jarray =new JsonArray(); // jarray 변수를 통해 jarrayArray 객체 생성
		JsonObject json= new JsonObject(); // json 변수를 통해서  json객체 생성
		
		response.setCharacterEncoding("utf-8"); // 인코딩 urf-8
		PrintWriter out= response.getWriter(); // PrintWriter 객체 생성하여 출력문 생성		
		
		ACCDAO ACC_dao= new ACCDAO(); // ACC_dao 변수명을 통해 DB 연동을 통해서 데이터 가져올 수 있는 DAO 객체 생성
		ArrayList<ACCDTO> ACC_info = new ArrayList<ACCDTO>(); // DTO 객체 받아줄 수 있는 Arraylist 생성
		ACC_info = ACC_dao.getACC_info(); // ACC_info 변수에 DAO에 있는 getACC_info 메소드가 DTO 객체 반환 
		

		String name=null; 
		String address =null;
		String tell =null;
		
		for(int i=0; i<ACC_info.size();i++) {
			
			//ACC_info에 있는 ArrayList i번째 DTO 객체의 이름, 주소, 전화번호를 각각 name, address, tel 변수에 넣어준다. 
			name = ACC_info.get(i).getAccName();
			address = ACC_info.get(i).getAccAddress();
			tell = ACC_info.get(i).getAccTel();
			
			// json object에 키값과 value값 추가 
			json.addProperty("name", name);
			json.addProperty("address", address);
			json.addProperty("tell", tell);
			
			// 위에 추가한 값을 가진 json객체를 jarray에 추가
			jarray.add(json);
			
			// for문 다음 턴에 새로운 값을 가질 json객체를 생성하기 위해서 새로운 json  객체 생성
			json= new JsonObject();
		}
		
		//System.out.println(jarray);
		out.print(jarray);
		
		
		
		
	}

	
}
