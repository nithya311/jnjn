package organization_test;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class Login extends HttpServlet {
	 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        
        String username = request.getParameter("cemail");
        String password = request.getParameter("cpassword");
        
            boolean st =false;
            Connection con = null;
            try{
          	 con =  Doa.getCon();
               System.out.println("connected vvv");
               PreparedStatement ps =con.prepareStatement("select * from employee where emp_id=? and password=? and type=?");
               
               ps.setString(1,username);
               ps.setString(2,password);
               ps.setString(3,"candidate");
               System.out.println("connected");
               ResultSet rs =ps.executeQuery();
               System.out.println("executed");
               System.out.println(rs.next());
               if(rs.next()){
                st=true;
               }
            }catch(Exception e){
                e.printStackTrace();
            }
        
        if(st)
        {
         System.out.println("welcome");
         //HttpSession session = request.getSession();
         //session.setAttribute("user", username);
//            RequestDispatcher rs = request.getRequestDispatcher("Welcome");
//            rs.forward(request, response);
         response.sendRedirect("AvailableTest.jsp");
        }
        else
        {
         response.sendRedirect("index.jsp");
        }
    }  
    public void doGet(HttpServletRequest request, HttpServletResponse response)
      throws IOException, ServletException{
     doPost(request,response);
    }
}