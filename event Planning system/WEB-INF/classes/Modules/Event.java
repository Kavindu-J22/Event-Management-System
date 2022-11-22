package Modules;

public class Event {
	private int eventId;
	private String name;
	private String category;
	private double price;
	private String description;
	
	
	
	public Event() {
	}

	public Event(int eventId, String name, String category, double price, String description) {
		super();
		this.eventId = eventId;
		this.name = name;
		this.category = category;
		this.price = price;
		this.description = description;
	}

	public int getEventId() {
		return eventId;
	}

	public void setEventId(int eventId) {
		this.eventId = eventId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	
	
	
}
