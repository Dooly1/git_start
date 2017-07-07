package delivary.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import delivary.mybatis.OrderStatusDAO;
import delivary.mybatis.ProductVO;
import delivary.mybatis.StatusVO;

public class OrderCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {	
		List<StatusVO> list = OrderStatusDAO.getHubs();
		request.setAttribute("hub", list);
		
		List<ProductVO> list2 = OrderStatusDAO.getProduct();
		request.setAttribute("product", list2);
		return "service/order.jsp";
	}
}
