package utils;

public class StringUtil {

	public String getKorInterest(String eng) {
		String kor = "";
		switch(eng) {
			case "eco": kor = "경제"; break;
			case "pol": kor = "정치"; break;
			case "ent": kor = "연예"; break;
		}
		return kor;
	}
	
	public String getKorGender(String eng) {
		String kor = "";
		switch(eng) {
			case "woman": kor = "여자"; break;
			case "man": kor = "남자"; break;
		}
		return kor;
	}
	
}
