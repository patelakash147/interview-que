package hello;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class add
 */
@WebServlet("/add")
public class add extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public add() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher( "/WEB-INF/add.jsp" ).forward(
	            request, response );
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String fname=request.getParameter( "fname" );
		String lname=request.getParameter( "lname" );
		Integer cin= Integer.parseInt(request.getParameter("cin"));
		String  quarter= request.getParameter("Qurter");
		String  course= request.getParameter("rd");
		Date date=new Date();


	
	       
		  model entry = new model(fname,lname,cin,quarter,course, date);
	        @SuppressWarnings("unchecked")
			List<model> entries = (List<model>) getServletContext().getAttribute( "entries" );
		     
		        entries.add( entry );
		        request.getRequestDispatcher( "/WEB-INF/servey.jsp" ).forward(request, response );

		
	       
	       
		
	}

}
