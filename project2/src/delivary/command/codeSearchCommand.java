package delivary.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import delivary.mybatis.OrderStatusDAO;
import delivary.mybatis.StatusVO;

public class codeSearchCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String odx = request.getParameter("code2");
		System.out.println(odx);
		StatusVO vo = OrderStatusDAO.getCode(odx);
		System.out.println(vo);
		request.setAttribute("codeVO", vo);
		return "search/codeResult.jsp";
	}
}
