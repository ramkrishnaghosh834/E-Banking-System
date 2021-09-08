package banking;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class newuser
 */
@WebServlet("/newuser")
public class newuser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public newuser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("gh");
		String uname=request.getParameter("uname");
		String accno=request.getParameter("accno");
		String username=request.getParameter("username");
		String pass=request.getParameter("upass");
		int amo=Integer.parseInt(request.getParameter("amount"));
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","1234");
			PreparedStatement s=con.prepareStatement("Insert into customer (name,accountno,username,pass,amount)Values(?,?,?,?,?)");
			s.setString(1, uname);
			s.setString(2,accno);
			s.setString(3,username);
			s.setString(4,pass);
			s.setInt(5, amo);
			s.executeUpdate();
			response.sendRedirect("choice.jsp");
	}catch(Exception e) {
		System.out.println(e);
	}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}

}
