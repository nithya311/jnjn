package organization_test;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CreateTestServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        try {
        	  String option1 = request.getParameter("option1");
        	  String option2 = request.getParameter("option2");
        	  String option3 = request.getParameter("option3");
        	  String option4 = request.getParameter("option4");
        	  System.out.println(option1+option2+option3+option4);
        	  Connection con = Doa.getCon();
        	  PreparedStatement ps;
        	   ps = con.prepareStatement("");
        } catch(Exception e) {
        	
        }
}
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		doPost(request,response);
	}
}