package delivary.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import delivary.mybatis.DiaryVO;
import delivary.mybatis.ListDAO;
import paging.WebPaging;



public class ListCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		request.getSession().removeAttribute("list");		
		request.getSession().removeAttribute("Prev");		
		request.getSession().removeAttribute("next");		
		request.getSession().removeAttribute("pageList");		
		
		
		List<DiaryVO> lists = ListDAO.getAll();

		String cPage = request.getParameter("cPage");
		if (cPage == null)
			cPage = "1";
		System.out.println(cPage);
		WebPaging webPage = new WebPaging(lists.size(), 3, 3, Integer.parseInt(cPage));
		List<DiaryVO> lists2 = ListDAO.getPage(webPage.getMap());
		request.getSession().setAttribute("list", lists2);
		
		if(webPage.checkBefore()){
			request.getSession().setAttribute("Prev", webPage.setBefore());
		}
		if(webPage.checkAfter()){
			request.getSession().setAttribute("next", webPage.setAfter());
		}
		request.getSession().setAttribute("pageList", webPage.getPageCount());
		request.getSession().removeAttribute("cPage");	
		request.getSession().setAttribute("cPage", cPage);
		return "others/list.jsp";
	}
}