package domain.chap14;

public class Employee {
	private String firstName;
	private String lastName;	
	
	// get set 메소드를 만들면 프로퍼티가 생긴다
	// source에서 generate Getters and Setters
	
	public String getFirstName() { 
		return firstName;
	}
	
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	public String getLastName() {
		return lastName;
	}
	
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
}
