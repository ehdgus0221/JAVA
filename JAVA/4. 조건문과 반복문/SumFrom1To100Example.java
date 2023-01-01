package ch04.sec04;
// 1부터 100까지 합 구하는 예제
public class SumFrom1To100Example {
	public static void main(String[] args) {
		int sum = 0;
		int i;
			
		for(i=1; i<=100; i++) {
			sum += i;
		}
			
		System.out.println("1~" + (i-1) + " 합 : " + sum);
	}
 }