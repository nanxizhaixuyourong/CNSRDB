package shop;
import java.sql.*;
public class test{
	
	public static Connection con;
	protected Connection conn =null;	//Connection对象
	protected Statement stmt =null ;	//Statement对象
	protected ResultSet rs = null;		//记录结果集
	protected String sqlStr=new String();//SQL语句
	
	 String driverName = "com.microsoft.sqlserver.jdbc.SQLServerDriver"; 
	String url = "jdbc:sqlserver://127.0.0.1:1433;DatabaseName=CNSRDB";
	 String user = "sa";
	 String password = "sa";
 
	public  test() {
		try{
			Class.forName(driverName);
			System.out.print("加载驱动成功");
	        con=DriverManager.getConnection(url, user, password);
			//Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");		
			//con=DriverManager.getConnection("jdbc:sqlserver://127.0.0.1:1433;DatabaseName=CNSRDB","sa", "sa");
	        System.out.print("链接成功");
	        con.close();
		}catch (Exception e) {
			System.out.print("链接失败");
			e.printStackTrace();
		}
	}
}