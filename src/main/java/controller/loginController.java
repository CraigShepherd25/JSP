package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.member;
import dao.impl.memberImpl;


@WebServlet("/loginController")
public class loginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public loginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * 1.接收帳號密碼-->request
		 * 2.queryMember-->!=null--->loginSuccess
		 * 3.null->loginError
		 */
		
		String Username=request.getParameter("username");
		String Password=request.getParameter("password");
		
		member m=new memberImpl().queryMember(Username, Password);
		
		
		if(m!=null)
		{
			response.sendRedirect("porder/loginSuccess.jsp");
			HttpSession session = request.getSession();
			session.setAttribute("M", m);
		}
		else
		{
			response.sendRedirect("loginError.jsp");
		}
	
	
	}

}