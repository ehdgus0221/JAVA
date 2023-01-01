package ch04.sec07;
// 주사위 예제에서 6이 나오면 while문을 종료시키는 예제
public class BreakExample {
	public static void main(String[] args) throws Exception {
		while(true) {
			int num = (int)(Math.random()*6) + 1;
			System.out.println(num);
			if(num == 6) {
				break;
			}
		}
		System.out.println("프로그램 종료");
	}
}