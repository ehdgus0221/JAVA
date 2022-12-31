package ch03.sec11;
// 삼항 연산자 예제 -> 조건식 ? (값 또는 식) : (값 또는 식)
public class ConditionalOperationExample {
	public static void main(String[] args) {
		int score = 85;
		char grade = (score > 90) ? 'A' : ( (score > 80) ? 'B' : 'C' );
		System.out.println(score + "점은 " + grade + "등급입니다.");
	}
}

