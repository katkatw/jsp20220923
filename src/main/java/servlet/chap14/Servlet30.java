package servlet.chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import domain.chap14.Customer;

/**
 * Servlet implementation class Servlet30
 */
@WebServlet("/Servlet30")
public class Servlet30 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet30() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idParam = request.getParameter("id");
		int id = Integer.parseInt(idParam);
		
		String sql = "SELECT CustomerName, ContactName, Address, City, Country "
				+ "FROM Customers "
				+ "WHERE CustomerID = ? ";
		
		ServletContext application = request.getServletContext();
		
		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();
		
		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				PreparedStatement pstmt = con.prepareStatement(sql);) {
			
			pstmt.setInt(1, id);
			try (ResultSet rs = pstmt.executeQuery();) {
				
				if (rs.next()) {
					Customer c = new Customer();
					c.setCustomername(rs.getString("CustomerName"));
					c.setContactname(rs.getString("ContactName"));
					c.setAddress(rs.getString("Address"));
					c.setCity(rs.getString("City"));
					c.setCountry(rs.getString("Country"));
					c.setId(id);
					
					request.setAttribute("customer", c);
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		String path = "/WEB-INF/view/chap14/view13.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String customername = request.getParameter("CustomerName");
		String contactname = request.getParameter("ContactName");
		String address = request.getParameter("Address");
		String city = request.getParameter("City");
		String country = request.getParameter("Country");
		String idStr = request.getParameter("id");
		int id = Integer.parseInt(idStr);
		
		String sql = "UPDATE Customers "
				+ "SET CustomerName = ?,"
				+ "	   ContactName = ?,"
				+ "	   Address = ?,"
				+ "	   City = ?,"
				+ "	   Country = ?"
				+ "WHERE CustomerId = ?	";
		
		ServletContext application = request.getServletContext();
		
		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();
		
		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				PreparedStatement pstmt = con.prepareStatement(sql);) {
			
			pstmt.setString(1, customername);
			pstmt.setString(2, contactname);
			pstmt.setString(3, address);
			pstmt.setString(4, city);
			pstmt.setString(5, country);
			pstmt.setInt(6, id);
			
			int cnt = pstmt.executeUpdate();
			if (cnt == 1) {
				HttpSession session = request.getSession();
				session.setAttribute("message", "고객 정보가 수정되었습니다.");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
