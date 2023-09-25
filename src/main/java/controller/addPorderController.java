package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.impl.porderImpl;
import model.porder;

@WebServlet("/addPorderController")
public class addPorderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public addPorderController() {
        super();
        // TODO Auto-generated constructor stub
    }

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * 產生session
		 * 1.擷取 session-->p
		 * 2.add(p)--->新增到資料庫
		 * 3.換頁-->finish.jsp
		 */
		
		HttpSession session=request.getSession();
		porder p=(porder)session.getAttribute("P");
		
		new porderImpl().add(p);
		
		response.sendRedirect("porder/finish.jsp");
		
	}

}