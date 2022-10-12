package servlet.chap14;

import java.awt.List;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet15
 */
@WebServlet("/Servlet15")
public class Servlet15__ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet15__() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1.2. 파라미터 수집 가공
		
		// 3. business logic
		// -> 고객명을 오름차순으로 조회
		
		// 4. 조회결과 attribute로 추가
		List<String> list = new ArrayList<>();
		/*
		list.add(row1.getString(1));
		list.add(row2.getString(1));
		.
		.
		list.add(row99.getString(1));
		*/
		
		request.setAttribute("customerNames", list);
		
		// 5. forward/redirect
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
