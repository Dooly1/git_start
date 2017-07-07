package delivary.command;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MainCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {	
		request.getSession().invalidate();
		return "base.jsp";
	}
}