package ch02.sec02;
// 다양한 정수 리터럴 변수에 대입하고 10진수로 출려하기
public class IntegerLiteralExample {
	public static void main(String[] args) {
		int var1 = 0b1001; //2진수
		int var2 = 0206;	//8진수
		int var3 = 365;		//10진수
		int var4 = 0xB3;	//16진수

		System.out.println("var1: " + var1);
		System.out.println("var2: " + var2);
		System.out.println("var3: " + var3);
		System.out.println("var4: " + var4);
	}
}
