package ch02.sec06;

public class TextBlockExample {
	public static void main(String[] args) {
		String str1 = "" +
	"{\n" +
	"\t\"id\":\"winter\",\n" +
	"\t\"name\":\"눈송이\"\n" +
	"}";
		
		String str2 = """
				{
				"id":"winter",
				"name":"눈송이"
				}
				""";
		
		System.out.println(str1);
		System.out.println("--------------------------");
		System.out.println(str2);
		System.out.println("--------------------------");
		String str = """
				자바
				공부중
				타이핑 집중해서 하기
				""";
		System.out.println(str);
	}
}
