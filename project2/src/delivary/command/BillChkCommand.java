package delivary.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import delivary.mybatis.OrderStatusDAO;
import delivary.mybatis.lengthVO;

public class BillChkCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		request.getSession().removeAttribute("result");
		request.getSession().removeAttribute("size");
		lengthVO vo = new lengthVO();
		vo.setL_start_num(request.getParameter("l_start"));
		vo.setL_end_num(request.getParameter("l_end"));
		String size = request.getParameter("size");
		
		lengthVO result = OrderStatusDAO.getBill(vo);
		System.out.println(result.getL_tax());
	
		int i = 0;
		switch(size){
		case "Small":
			i = 3000;
			break;
		case "Middle":
			i = 5000;
			break;
		case "Large":
			i = 10000;
			break;
		default:
			i = 0;
		}
		
		System.out.println(result);
		request.getSession().setAttribute("result", result);
		request.getSession().setAttribute("size", i);
		return "service/billChk.jsp";
	}
}
