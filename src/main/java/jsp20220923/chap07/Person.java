package jsp20220923.chap07;

public class Person {
	// 읽고 쓸 수 있는
	// name, age 프로퍼티 작성
	private String name;
	private Integer age;
	private boolean alive;
	
	
	
	public boolean isAlive() { // boolean type 읽기 프로퍼티의 메소드는 is로 시작
		return alive;
	}

	public void setAlive(boolean alive) {
		this.alive = alive;
	}

	public Person() {
		// 이거 생성자 안만들면 알아서 생성됨
	}
	
	// 읽을 수 있는 name 프로퍼티 결정
	public String getName() {
		return name;
	}
	
	// 읽을 수 있는 age 프로퍼티 결정
	public Integer getAge() {
		return age;
	}
	
	// 쓸 수 있는 name 프로퍼티 결정
	public void setName(String name) {
		this.name = name;
	}
	
	// 쓸 수 있는 age 프로퍼티 결정
	public void setAge(Integer age) {
		this.age = age;
	}
	
	// 읽을 수 있는 nationality 프로퍼티 결정 
	public String getNationality() {
		return "대한민국";
	} // 혼자 만들어 봤는데 쓸 수 있는지는 모름
}
