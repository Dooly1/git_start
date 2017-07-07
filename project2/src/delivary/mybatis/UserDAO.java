package delivary.mybatis;

import java.util.List;

// DB관련된 처리하는 클래스
public class UserDAO extends DAO{	
	public static String isDuplexID(String u_id){
		if(u_id.matches(".*(?=[^\\w]).*"))
			return "　아이디에 특수문자가 포함되어 있습니다.";
		else if(u_id.length() > 10)
			return "　아이디는 10글자 이하로 설정하세요.";
		else{
			u_id = u_id.toUpperCase();
			List<UserVO> vo = getSql().selectList("duplexChk", u_id);
			if(vo.isEmpty())
				return "　중복이 아닙니다.";
			else
				return "　중복입니다";
		}
	}
	public static List<UserVO> SearchID(String u_id){
		u_id = u_id.toUpperCase();
		List<UserVO> vo = getSql().selectList("duplexChk", u_id);
		return vo;
	}
	public static UserVO SearchIdx(String idx){
		UserVO vo = getSql().selectOne("getIdx", idx);
		return vo;
	}
	public static boolean setJoinUser(UserVO vo){		
		int result = getSql().insert("join", vo);
		ss.commit();
		if(result > 0)
			return true;
		else
			return false;
	}
	public static UserVO loginUser(UserVO vo){
		UserVO user = getSql().selectOne("login", vo);
		return user;
	}
}


















