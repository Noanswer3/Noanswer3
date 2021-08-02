package model;

public class MemberDTO {
   
   private String id;
   private String pw;
   private String tel;
   private String email;
   private String name;
   private String address;
   private String admin_name;
  
public MemberDTO(String admin_name,String id, String pw, String tel, String email, String name, String address) {
	super();
	this.id = id;
	this.pw = pw;
	this.tel = tel;
	this.email = email;
	this.name = name;
	this.address = address;
	this.admin_name = admin_name;
}





public MemberDTO(String id, String pw, String tel, String email, String address) {
	super();
	this.id = id;
	this.pw = pw;
	this.tel = tel;
	this.email = email;
	this.address = address;
}





public String getId() {
	   return id;
	}

public void setId(String id) {
   this.id = id;
}

public String getPw() {
   return pw;
}

public void setPw(String pw) {
   this.pw = pw;
}

public String getTel() {
   return tel;
}

public void setTel(String tel) {
   this.tel = tel;
}

public String getEmail() {
   return email;
}

public void setEmail(String email) {
   this.email = email;
}

public String getName() {
   return name;
}

public void setName(String name) {
   this.name = name;
}

public String getAddress() {
   return address;
}

public void setAddress(String address) {
   this.address = address;
}

  
   
}