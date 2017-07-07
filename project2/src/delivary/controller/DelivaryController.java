package delivary.controller;

import java.io.IOException;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

import delivary.command.BaseCommand;
import delivary.command.Command;
import delivary.command.IdSearchCommand;
import delivary.command.LoginCommand;
import delivary.command.OrderCommand;
import delivary.command.OrderCommand2;
import delivary.command.OrderOkCommand;
import delivary.command.codeSearchCommand;
import delivary.command.joinChkCommand;

@WebServlet("/DelivaryController")
public class DelivaryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public DelivaryController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		//PrintWriter out = response.getWriter();		
		String cmd = request.getParameter("cmd");
		System.out.println(cmd);
		Command com = null;
		switch (cmd) {
		case "joinChk":
			com = new joinChkCommand();
			break;
		case "login":
			com = new LoginCommand();
			break;
		case "base":
			com = new BaseCommand();
			break;
		case "order":
			com = new OrderCommand();
			break;
		case "order2":
			com = new OrderCommand2();
			break;
		case "orderOk":
			com = new OrderOkCommand();
			break;
		case "product":
			com = new OrderCommand2();
			break;
		case "idSearch":
			com = new IdSearchCommand();
			break;	
		case "codeSearch":
			com = new codeSearchCommand();
			break;
		default:
			break;			
		}
		String path = com.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
	}

}
