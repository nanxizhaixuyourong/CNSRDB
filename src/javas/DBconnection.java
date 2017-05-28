package javas;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnection {
	private String driverName = "com.microsoft.sqlserver.jdbc.SQLServerDriver"; 
	private String url = "jdbc:sqlserver://127.0.0.1:1433;DatabaseName=CNSRDB";
	private String user = "sa";
	private String password = "sa";
	
	public DBconnection(){};

	public void setDriverName(String newDriverName) {
        	this.driverName = newDriverName;
    		}
	
    public String getDriverName() {
        	return driverName;
    		}
	
	public void setUrl(String newUrl) {
	        this.url = newUrl;
	    	}
   	
	public String getUrl() {
	        return url;
	    	}
	
	public void setUser(String newUser) {
	        this.user = newUser;
		}
	
	public String getUser() {
	        return user;
		}
	
	public void setPassword(String newPassword) {
	        this.password = newPassword;
	    	}
	
	public String getPassword() {
	        return password;
	    	}
	
	public Connection getConnection() {
	     try{
	         Class.forName(driverName);
	         return DriverManager.getConnection(url, user, password);
	     }catch (Exception e) {
	            e.printStackTrace();
	            return null;
       	 }
   	}
	
}
