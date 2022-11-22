package Modules;

public class CreditCard {
	private String username;
	private String cardHoldername;
	private int csv;
	private String expireDate;
	private int cardNo;
	public CreditCard() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CreditCard(String username, String cardHoldername, int csv, String expireDate, int cardNo) {
		super();
		this.username = username;
		this.cardHoldername = cardHoldername;
		this.csv = csv;
		this.expireDate = expireDate;
		this.cardNo = cardNo;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getCardHoldername() {
		return cardHoldername;
	}
	public void setCardHoldername(String cardHoldername) {
		this.cardHoldername = cardHoldername;
	}
	public int getCsv() {
		return csv;
	}
	public void setCsv(int csv) {
		this.csv = csv;
	}
	public String getExpireDate() {
		return expireDate;
	}
	public void setExpireDate(String expireDate) {
		this.expireDate = expireDate;
	}
	public int getCardNo() {
		return cardNo;
	}
	public void setCardNo(int cardNo) {
		this.cardNo = cardNo;
	}
	
	
}
