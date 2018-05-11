package jspbook.ch07;

import java.util.ArrayList;
import java.util.List;

/**
 * File : AddrManager.java
 * Desc : 주소록 관리 클래스
 * @author 박은혜(p89586333@gmail.com)
 */
public class AddrManager {
	// 주소록 목록을 관리하기 위한 ArrayList
	List<AddrBean> addrlist = new ArrayList<AddrBean>(); //AddrBean객체배열 담으니까 제네릭타입으로..
	
	// 주소록 추가 메서드
	public void add(AddrBean ab) {
		addrlist.add(ab);
	}
	
	// 주소록 목록 전달 메서드
	public List<AddrBean> getAddrList() {
		return addrlist;
	}
	
	// 특정 사용자를 주소록 목록에서 검색하는 메서드
	public AddrBean getAddr(String username) {
		for(AddrBean ab : addrlist) {
			if(ab.getUsername().equals(username))
				return ab;
		}
		return null;
	}
}
