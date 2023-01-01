package ch04.sec04;
// 부동 소수점을 이용한 반복문 예제 ( 부동 소수점을 이용하면 0.1을 정확히 표현하지 못하여 오류가 발생할수도 있다.)
public class FloatCounterExample {
	public static void main(String[] args) {
		for(float x=0.1f; x<=1.0f; x+=0.1f) {
			System.out.println(x);
		}
	}
}