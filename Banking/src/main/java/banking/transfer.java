package banking;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class transfer
 */
@WebServlet("/transfer")
public class transfer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public transfer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		String sname=request.getParameter("uname");
		String accno=request.getParameter("accno");
		int amo=Integer.parseInt(request.getParameter("amount"));
		System.out.println("gh");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","1234");
			PreparedStatement ps=con.prepareStatement("Select amount from customer where accountno=?");
			System.out.println("pass");
			ps.setString(1, accno);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				PreparedStatement p=con.prepareStatement("Update customer Set amount=? where accountno=?");
				p.setInt(1, rs.getInt(1)+amo);
				p.setString(2, accno);
				p.executeUpdate();
				System.out.println("deposited");
				HttpSession session=request.getSession(false);
				String s=(String)session.getAttribute("account");
				System.out.println("S"+s);
				PreparedStatement o=con.prepareStatement("Select amount from customer where accountno=?");
				o.setString(1, s);
				ResultSet y=o.executeQuery();
				System.out.println("g");
				if(y.next()) {
					System.out.println("h");
				
				PreparedStatement q=con.prepareStatement("Update customer Set amount=? where accountno=?");
				q.setInt(1,y.getInt(1)-amo);
			
				q.setString(2,s);
				
				System.out.println("u");
				q.executeUpdate();
				PreparedStatement pt=con.prepareStatement("Select amount from customer where accountno=?");
				pt.setString(1,s);
				ResultSet rt=pt.executeQuery();
				if(rt.next()) {
					session.setAttribute("amount", rt.getInt(1));
				}
				response.sendRedirect("mainc.jsp");
			}}
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
