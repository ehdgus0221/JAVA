package ch02.sec01;
// 변수 x,y 값을 서로 바꾸는 예제
public class VariableExchangeExample {
	public static void main(String[] args) {
		int x=3;
		int y=5;
		System.out.println("x:" + x + ", y:" + y);
		
		int temp =x;
		x =y ;
		y = temp;
		System.out.println("x:" + x + ", y:" + y);
	}
}
