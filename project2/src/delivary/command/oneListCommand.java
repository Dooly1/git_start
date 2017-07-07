package delivary.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import delivary.mybatis.DiaryVO;
import delivary.mybatis.ListDAO;

public class oneListCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		request.getSession().removeAttribute("oneVO");		
		String idx = request.getParameter("idx");
		System.out.println(idx);
		
		DiaryVO vo = ListDAO.getOne(idx);
		System.out.println(vo);
		request.getSession().setAttribute("oneVO", vo);
		
		return "others/oneList.jsp";
	}
}