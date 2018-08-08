package organization_test;

import java.sql.Connection;
import java.sql.SQLException;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class Doa {
 public static Connection getCon() throws SQLException, NamingException{
   InitialContext ic=new InitialContext();
   DataSource ds = (DataSource) ic.lookup( "java:/comp/env/connpool" );
   Connection con=ds.getConnection();
  return con;
 }
}