package Modules;

public class SelectedEvent {
	private int eventId;
	private int id;
	private String username;
	private String date;
	private String description;
	private int numOfGuest;
	private String place;
	public SelectedEvent() {
		
		
	}
	public SelectedEvent(int eventId, String username, String date, String description, int numOfGuest,String place,int id) {
		super();
		this.eventId = eventId;
		this.username = username;
		this.date = date;
		this.description = description;
		this.numOfGuest = numOfGuest;
		this.place = place;
		this.id = id;
	}
	public int getEventId() {
		return eventId;
	}
	public void setEventId(int eventId) {
		this.eventId = eventId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getNumOfGuest() {
		return numOfGuest;
	}
	public void setNumOfGuest(int numOfGuest) {
		this.numOfGuest = numOfGuest;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	
	
}
