package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.impl.memberImpl;
import model.member;

@WebServlet("/addMemberController")
public class addMemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public addMemberController() {
        super();
        // TODO Auto-generated constructor stub
    }

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * 1.request-->utf-8,接收資料username
		 * 2.帳號重複-->true-->addMemberError重新註冊
		 * 3.false-->接收所有資料-->new member-->add(m)-->addMemberSuccess-->重新登入-->index
		 */
		
		request.setCharacterEncoding("utf-8");
		String Username=request.getParameter("username");
		
		boolean x=new memberImpl().queryUsername(Username);
		
		if(x)
		{
			response.sendRedirect("addMemberError.jsp");
		}
		else
		{
			String Name=request.getParameter("name");
			String Password=request.getParameter("password");
			String Address=request.getParameter("address");
			String Phone=request.getParameter("phone");
			
			member m=new member(Name,Username,Password,Address,Phone);
			
			new memberImpl().add(m);
			
			response.sendRedirect("addMemberSuccess.jsp");
		}
		
		
	}

}