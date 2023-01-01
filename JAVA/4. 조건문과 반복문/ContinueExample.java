package ch04.sec08;
// continue문 예제
public class ContinueExample {
	public static void main(String[] args) throws Exception {
		for(int i=1; i<=10; i++) {
			if(i%2 != 0) {
				continue;
			}
			System.out.print(i + " ");
		}
	}
}