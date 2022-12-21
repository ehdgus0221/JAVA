package ch02.sec02;
// byte 타입 변수에 호용 범위를 초과한 값을 대입했을때 출력결과 확인하기(컴파일 오류로 실행 안됨)
public class ByteExample {
	static void main(String[] args) {
		byte var1 = -128;
		byte var2 = -30;
		byte var3 = -0;
		byte var4 = 30;
		byte var5 = 127;
	//	byte var6 = 128;  // byte 범위 초과값을 대입해서 컴파일 오류가 발생함
		
		System.out.println(var1);
		System.out.println(var2);
		System.out.println(var3);
		System.out.println(var4);
		System.out.println(var5);
	}
}
