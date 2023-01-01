package ch04.sec04;
// 중첩 for문을 이용하여 구구단 예제 
public class MultiplicationTableExample {
	public static void main(String[] args) {
		for (int m=2; m<=9; m++) {
			System.out.println("*** " + m + "단 ***");
			for (int n=1; n<=9; n++) {
				System.out.println(m + " x " + n + " = " + (m*n));
			}
		}
	}
}