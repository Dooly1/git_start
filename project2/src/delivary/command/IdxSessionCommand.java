package delivary.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import delivary.mybatis.UserDAO;
import delivary.mybatis.UserVO;

public class IdxSessionCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String idx = request.getParameter("idx");
		UserVO vo = UserDAO.SearchIdx(idx);
		System.out.println(vo);
		request.getSession().removeAttribute("userVo");
		request.getSession().setAttribute("getUser", vo);
		
		return "service/idService.jsp";
	}
}
