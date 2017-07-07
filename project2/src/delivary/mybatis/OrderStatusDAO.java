package delivary.mybatis;

import java.util.List;

public class OrderStatusDAO extends DAO{
	public static List<StatusVO> getHubs(){
		return getSql().selectList("Allhub");		
	}
	public static lengthVO getBill(lengthVO vo){
		return getSql().selectOne("billChk", vo);
	}
	public static List<ProductVO> getProduct(){
		return getSql().selectList("AllProduct");
	}
	public static ProductVO getOneProduct(String product_code){
		return getSql().selectOne("getProduct", product_code);
	}
	public static lengthVO getBill2(lengthVO vo){
		return getSql().selectOne("billChk2", vo);		
	}
	public static StatusVO getCode(String odx){
		return getSql().selectOne("getCode", odx);
	}
	public static List<StatusVO> getCodeById(String idx){
		return getSql().selectList("getCodeById", idx);
	}
	
	public static int insertOrder(StatusVO vo){
		int res = getSql().insert("insertProduct", vo);
		ss.commit();
		int idx = 0;
		if(res > 0)
			idx = getSql().selectOne("getSeq");			
		return idx;
	}
	public static int insertOrderList(ProductVO vo){
		int res = getSql().insert("insertOrderList", vo);
		ss.commit();
		return res;
	}
}
