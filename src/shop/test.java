package shop;
import java.sql.*;
public class test{
	
	public static Connection con;
	protected Connection conn =null;	//Connection����
	protected Statement stmt =null ;	//Statement����
	protected ResultSet rs = null;		//��¼�����
	protected String sqlStr=new String();//SQL���
	
	 String driverName = "com.microsoft.sqlserver.jdbc.SQLServerDriver"; 
	String url = "jdbc:sqlserver://127.0.0.1:1433;DatabaseName=CNSRDB";
	 String user = "sa";
	 String password = "sa";
 
	public  test() {
		try{
			Class.forName(driverName);
			System.out.print("���������ɹ�");
	        con=DriverManager.getConnection(url, user, password);
			//Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");		
			//con=DriverManager.getConnection("jdbc:sqlserver://127.0.0.1:1433;DatabaseName=CNSRDB","sa", "sa");
	        System.out.print("���ӳɹ�");
	        con.close();
		}catch (Exception e) {
			System.out.print("����ʧ��");
			e.printStackTrace();
		}
	}
}