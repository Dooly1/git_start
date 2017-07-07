package delivary.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import delivary.command.Command;
import delivary.command.IdxSessionCommand;

/**
 * Servlet implementation class delivaryControllerDiv06
 */
@WebServlet("/delivaryControllerDiv06")
public class delivaryControllerDiv06 extends HttpServlet {
	private static final long serialVersionUID = 1L;
 	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		Command comm = new IdxSessionCommand();
		String output = comm.exec(request, response);
		out.println(output);
	}
}
