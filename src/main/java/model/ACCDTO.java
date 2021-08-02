package model;

public class ACCDTO {

	private String AccName;
	private String AccAddress;
	private String AccTel;
	
	
	public ACCDTO(String accName, String accAddress, String accTel) {
		super();
		AccName = accName;
		AccAddress = accAddress;
		AccTel = accTel;
	}


	public String getAccName() {
		return AccName;
	}


	public void setAccName(String accname) {
		AccName = accname;
	}


	public String getAccAddress() {
		return AccAddress;
	}


	public void setAccAddress(String accAddress) {
		AccAddress = accAddress;
	}


	public String getAccTel() {
		return AccTel;
	}


	public void setAccTel(String accTel) {
		AccTel = accTel;
	}



	
	
	
}


