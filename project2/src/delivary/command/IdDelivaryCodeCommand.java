package delivary.command;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import delivary.mybatis.OrderStatusDAO;
import delivary.mybatis.StatusVO;
import delivary.mybatis.UserVO;

public class IdDelivaryCodeCommand  implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		request.getSession().removeAttribute("lists");
		
		HttpSession session = request.getSession();
		UserVO currVO = (UserVO)session.getAttribute("user");
		
		List<StatusVO> listById = OrderStatusDAO.getCodeById(currVO.getIdx());
		System.out.println(listById);
		request.getSession().setAttribute("lists", listById);
		
		return "success";
	}
}
