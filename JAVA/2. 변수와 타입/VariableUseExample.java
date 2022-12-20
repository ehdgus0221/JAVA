package ch02.sec01;
// 변수와 문자열을 결합 하여 연산 및 출력
public class VariableUseExample {
	public static void main(String[] args) {
		int hour =3;
		int minute =5;
		System.out.println(hour + "시간" + minute + "분");
		
		int totalMinute = (hour*60) + minute;
		System.out.println("총 " + totalMinute + "분");
	}
}
