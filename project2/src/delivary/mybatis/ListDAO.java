package delivary.mybatis;

import java.util.List;
import java.util.Map;

public class ListDAO extends DAO{
	public static List<DiaryVO> getAll(){
		List<DiaryVO> list = getSql().selectList("AllListed");
		return list;
	}
	public static List<DiaryVO> getPage(Map<String, Integer> map){
		List<DiaryVO> list = getSql().selectList("pageListed", map);
		return list;
	}
	public static DiaryVO getOne(String idx){
		DiaryVO vo = getSql().selectOne("OneListed", idx);
		return vo;
	}
	
}
