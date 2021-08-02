package model;

public class ReservationDTO {

	private String id;
	private String startDate;
    private String endDate;
    private String room;
    private String pNumber;
    private String cardCo;
    private String cardNumber;
    
    public ReservationDTO(String id, String startDate, String endDate, String room, String pNumber, String cardCo, String cardNumber) {
    	super();
    	this.id = id;
    	this.startDate = startDate;
    	this.endDate = endDate;
    	this.room = room;
    	this.pNumber = pNumber;
    	this.cardCo = cardCo;
    	this.cardNumber = cardNumber;
    }
  
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getRoom() {
		return room;
	}
	public void setRoom(String room) {
		this.room = room;
	}
	public String getpNumber() {
		return pNumber;
	}
	public void setpNumber(String pNumber) {
		this.pNumber = pNumber;
	}
	public String getCardCo() {
		return cardCo;
	}
	public void setCardCo(String cardCo) {
		this.cardCo = cardCo;
	}
	public String getCardNumber() {
		return cardNumber;
	}
	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}
    
    
    
	
}
