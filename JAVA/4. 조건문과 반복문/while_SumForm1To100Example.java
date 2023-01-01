package ch04.sec05;
// 1부터 100까지 합을 구하는 while문 예제
public class SumFrom1To100Example {
	public static void main(String[] args) {
		int sum = 0;
		
		int i = 1;
		
		while(i<=100) {
			sum += i;
			i++;
		}

		System.out.println("1~" + (i-1) + " 합 : " + sum);
	}
}