package delivary.mybatis;

import org.apache.ibatis.session.SqlSession;

// DB관련된 처리하는 클래스
abstract class DAO {
	protected static SqlSession ss;
	
	protected synchronized static SqlSession getSql(){
		if(ss == null){
			ss = DBService.getFactory().openSession(false);
		}
		return ss;
	}
}


















