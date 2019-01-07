package com.herbmall.test;

public class person {
	//싱글톤 패턴 - 인스턴스를 하나만 생성해서 사용하는 패턴
	/*
	 
	*/
	
	private static person instance;//맴버 변수
	//=>하나만 만들어지고 , 모든 객체가 공유함
		
	//private 생성자
	private person() {
		
	}//person
	
	//person객체를 리턴하는 static 메서드
	public static person getInstance() {
		if(instance==null) {
			instance=new person();
		}
		return instance;
	}//getInstance
	public void showInfo() {
		System.out.println("너 나 우리 ");
	}
}
