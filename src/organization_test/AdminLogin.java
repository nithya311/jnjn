package organization_test;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdminLogin extends HttpServlet {
 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        String username = request.getParameter("aemail");
        String password = request.getParameter("apassword");
        System.out.println("values fetched from form");
        System.out.println(username+" "+password);
        
        try {
   if(AdminValidate.checkUser(username, password))
   {
    System.out.println("**********");
    request.setAttribute("admin_id", username);
    RequestDispatcher rs = request.getRequestDispatcher("a1.jsp");
    rs.forward(request, response);
   }
   else
   {
    System.out.println("#######");
    response.sendRedirect("index.jsp");
     // out.println("Username or Password incorrect");
     // RequestDispatcher rs = request.getRequestDispatcher("login");
      //rs.include(request, response);//if u want to add response
   }
  } catch (SQLException e) {
   // TODO Auto-generated catch block
   e.printStackTrace();
  } catch (NamingException e) {
   // TODO Auto-generated catch block
   e.printStackTrace();
  }
    }  
    public void doGet(HttpServletRequest request, HttpServletResponse response)
      throws IOException, ServletException{
     doPost(request,response);
    }
}