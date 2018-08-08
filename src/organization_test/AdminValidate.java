package organization_test;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.naming.NamingException;

public class AdminValidate {
  
      public static boolean checkUser(String username,String password) throws SQLException, NamingException 
      {
       boolean st = false;
       PreparedStatement ps;
       Connection con = null;
       con =  Doa.getCon();
         System.out.println("connected vvv");
         System.out.println(username+" "+password);
          ps =con.prepareStatement("select emp_id,password from employee where emp_id=? and password=?");
          ps.setString(1,username);
          ps.setString(2,password);
          System.out.println("connected");
          ResultSet rs =ps.executeQuery();
          System.out.println("executed the rs line");
          //System.out.println(rs.next());
          if(rs.next())
         st=true;
      return st;                 
   }  
}