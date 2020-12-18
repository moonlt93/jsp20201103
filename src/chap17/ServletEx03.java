package chap17;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ServletEx03
 */
@WebServlet("/Ex03")
public class ServletEx03 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletEx03() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//jsp 기본객체 (114쪽)
		//request,session,application,config
		//response,out 
		//pagecontext, page
		//getwrier 문자 단위 , getoutputstream  byte단위
		
		HttpSession session = request.getSession();
		ServletContext application = request.getServletContext();
		application= getServletContext();
		ServletConfig config = getServletConfig();
		
		PrintWriter out = response.getWriter();
		
		System.out.println("doget 메소드 시작");
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("dopost 메소드 시작");
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
