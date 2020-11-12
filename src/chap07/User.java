package chap07;

public class User {
	private String name;
	private String Address;
	private int age;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public int getAge() {
		return age;
	}
	public User(String name, String address, int age) {
		super();
		this.name = name;
		Address = address;
		this.age = age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
	
	
	
}
