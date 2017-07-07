package delivary.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import delivary.mybatis.UserDAO;

public class DuplexChkCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String u_id = request.getParameter("u_id");
		String res = UserDAO.isDuplexID(u_id);
		return res;
	}
	

}
