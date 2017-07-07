package delivary.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import delivary.mybatis.UserDAO;
import delivary.mybatis.UserVO;

public class joinChkCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		UserVO uvo = new UserVO();
		uvo.setU_id(request.getParameter("u_id"));
		uvo.setPwd(request.getParameter("pwd"));
		uvo.setUsername(request.getParameter("username"));
		uvo.setPhone(request.getParameter("phone"));
		uvo.setZip(request.getParameter("zip"));
		uvo.setAddr(request.getParameter("addr"));
		uvo.setAddr2(request.getParameter("addr2"));
		String email = request.getParameter("email");
		if(email.equals("") || email == null)
			email = "empty";
		uvo.setEmail(email);
		uvo.setDepart_id("0");
		uvo.setPoint(0);
		uvo.setChk("N");
		System.out.println(uvo);
		boolean res = UserDAO.setJoinUser(uvo);
		request.setAttribute("res", res);
		return "base.jsp";
	}

}
