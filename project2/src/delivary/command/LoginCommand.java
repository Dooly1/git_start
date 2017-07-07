package delivary.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import delivary.mybatis.UserDAO;
import delivary.mybatis.UserVO;

public class LoginCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		UserVO vo = new UserVO();
		vo.setU_id(request.getParameter("u_id"));
		vo.setPwd(request.getParameter("pwd"));
		UserVO user =  UserDAO.loginUser(vo);
		if(user != null)
			request.getSession().setAttribute("user", user);
		else
			request.setAttribute("user", user);
		return "user/loginChk.jsp";
	}
}