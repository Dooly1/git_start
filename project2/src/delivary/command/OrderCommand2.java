package delivary.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import delivary.mybatis.OrderStatusDAO;
import delivary.mybatis.StatusVO;

public class OrderCommand2 implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {	
		List<StatusVO> list = OrderStatusDAO.getHubs();
		System.out.println(list);
		request.setAttribute("hub", list);
		
		
		return "service/bill.jsp";
	}
}
