package organization_test;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddQueServlet extends HttpServlet{
 
 protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        try {
  String questionString = request.getParameter("questionString");
  String option1 = request.getParameter("option1");
  String option2 = request.getParameter("option2");
  String option3 = request.getParameter("option3");
  String option4 = request.getParameter("option4");
  System.out.println(questionString+option1+option2+option3+option4);
  Connection con = Doa.getCon();
  PreparedStatement ps;
   ps = con.prepareStatement("insert into questions(question_id,question,option_a,option_b,option_c,option_d) values(?,?,?,?,?,?)");
   ps.setInt(1,102);
   ps.setString(2,questionString);
   ps.setString(3,option1);
   ps.setString(4,option2);
   ps.setString(5,option3);
   ps.setString(6,option4);
   ps.executeUpdate();
   System.out.println("inserted in add que servlet");
   response.sendRedirect("a1.jsp");
  } catch (SQLException | NamingException e) {
   // TODO Auto-generated catch block
   e.printStackTrace();
  }
}
}