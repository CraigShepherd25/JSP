package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.impl.porderImpl;


@WebServlet("/deletePorderController")
public class deletePorderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public deletePorderController() {
        super();
        // TODO Auto-generated constructor stub
    }

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * 1.request接收轉型-->int
		 * 2.執行-->delete(id)
		 * 3.response切換回porder/delete.jsp
		 */
		
		
		int ID=Integer.parseInt(request.getParameter("id"));
		
		new porderImpl().delete(ID);
		
		response.sendRedirect("porder/delete.jsp");
	}

}