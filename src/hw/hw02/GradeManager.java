package hw.hw02;

import java.util.ArrayList;
import java.util.List;
//20151080 박은혜
public class GradeManager {
	// 목록을 관리하기 위한 ArrayList
			List<GradeBean> gradelist = new ArrayList<GradeBean>();
			
			// 추가 메서드
			public void add(GradeBean gb) {
				gradelist.add(gb);
			}
			
			// 목록 전달 메서드
			public List<GradeBean> getGradeList() {
				System.out.println("...");
				return gradelist;
			}
			
			// 특정 사용자를 목록에서 검색하는 메서드
			public GradeBean getGrade(String username) {
				for(GradeBean gb : gradelist) {
					if(gb.getUsername().equals(username))
						return gb;
				}
				return null;
			}

	}

