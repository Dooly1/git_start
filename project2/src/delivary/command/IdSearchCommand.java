package delivary.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import delivary.mybatis.UserDAO;
import delivary.mybatis.UserVO;

public class IdSearchCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String u_id = request.getParameter("u_id");
		List<UserVO> vo = UserDAO.SearchID(u_id);
		request.getSession().setAttribute("userVo", vo);
		
		return "service/idService.jsp";
	}
}

