package chap08;

public class Car {
//	프로퍼티는 메소드에 의해 정의, get set을 제외하고 다음에 오는 단어-> 프로퍼티 
// ex) name 대문자는 get set이 없으므로 소문자로 바뀜.
	
	private String name;
	private int speed;
	
	
	
	//stop 프로퍼티 읽기전용(get메소드가  없다.)
	public boolean setStop() { //isStop-> boolean 타입에서는 프로퍼티로 분류됨.
		return speed ==0;
	}
	
	public String getName() {
		return name;
	}
//name	
	public void setName(String name) {
		this.name = name;
	}
//	speed
	public int getSpeed() {
		return speed;
	}
	public void setSpeed(int speed) {
		this.speed = speed;
	}
	

}
