package ch03.sec04;
// 실수 타입으로 연산하는 예제 ( 값이 정확하지 않음 )
public class AccuracyExample1 {
	public static void main(String[] args) {
		int apple = 1;
		double pieceUnit = 0.1;
		int number = 7;
		
		double result = apple - number*pieceUnit;
		System.out.println("사과 1개에서 남은 양: " + result);
	}
}