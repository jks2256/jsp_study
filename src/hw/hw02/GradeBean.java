/**
 * 
 * 파일설명:GradeBean
 */
/**
 * @author 박은혜
 *
 */
package hw.hw02;

public class GradeBean {
	//20151080 박은혜
	private String username;
	private String score;
	private int Score;

	public String getUsername() {
		return username;
		
	}

	public String getScore() {
		return score;
		
	}
	
	public String getGrade() {
		Score = Integer.parseInt(score);
		if(Score<=100 && Score>=90)
			return "A";
		if(Score<90 && Score>=80)
			return "B";
		if(Score<80 && Score>=70)
			return "C";
		if(Score<70 && Score>=60)
			return "D";
		else
			return "F";
				
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public void setScore(String score) {
		this.score = score;
	}
	
	
}
