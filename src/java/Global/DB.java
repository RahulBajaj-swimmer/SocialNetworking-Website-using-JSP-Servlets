
package Global;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;


public class DB {
      Connection con;
    Statement stmt;
    ResultSet rs;
    
    public DB()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost/dbsocial";
            con = DriverManager.getConnection(url,"root","root");
            stmt = con.createStatement();
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
    // insert, update, delete
    
    public void update(String qry) throws Exception
    {
        stmt.executeUpdate(qry);
    }
    public ResultSet execute(String qry) throws Exception
    {
        rs = stmt.executeQuery(qry);  //for taking the values from backend to frontend we use resultset(i.e. executeQuery)
        return rs;
    }
    public int getSno()throws Exception
    {
        String qry="select ifnull(max(sno),0)max from tbfriend";
        rs=stmt.executeQuery(qry);
        rs.next();
        int n= rs.getInt("max");
        n++;
        return n;
    }
    
      public int getMsgId()throws Exception
    {
        String qry="select ifnull(max(msgid),0)max from tbmsg";
        rs=stmt.executeQuery(qry);
        rs.next();
        int n= rs.getInt("max");
        n++;
        return n;
    }
        public int getNewId(String tbname,String colname)throws Exception
    {
        String qry="select ifnull(max("+colname+"),0)max from "+tbname;
        rs=stmt.executeQuery(qry);
        rs.next();
        int n= rs.getInt("max");
        n++;
        return n;
    }
    
    
}
