package servlet.chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.chap14.Customer;

/**
 * Servlet implementation class Servlet19
 */
@WebServlet("/Servlet19__")
public class Servlet19__ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet19__() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sql = "SELECT CustomerID, CustomerName, Address, Country, City "
				+ "FROM Customers"; // 순서가 중요 !!!
		
		// 3. business logic (jdbc로 query 실행)
		ServletContext application = request.getServletContext();

		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();

		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);) {
			
			List<Customer> list = new ArrayList<>();
			while (rs.next()) {
				int id = rs.getInt("customerid");	   // 대소문자 구분 안함
//				String customerName = rs.getString(1); // Select의 순서대로 첫번째 column
				String name = rs.getString("CustomerName"); 
//				String address = rs.getString(2); 	   
				String address = rs.getString("Address"); // 두번째 컬럼(인데 고객 요청에 따라 resultSet이 변경되면 // 괄호안 숫자를 변경할 수도 있고 getString 컬럼라벨로 쓰면 간단하다)
				String country = rs.getString("country");
				String city = rs.getString("city");
				
				Customer c = new Customer();
		
				c.setId(id);
				c.setName(name);
				c.setAddress(address);
				c.setCountry(country);
				c.setCity(city);
				
				list.add(c);
			}
			
			// 4. add attribute
			request.setAttribute("customers", list);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 5. forward / redirect
		String path = "/WEB-INF/view/chap14/view07.jsp";
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
