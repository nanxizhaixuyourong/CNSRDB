package javas;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javas.DBconnection;


public class DBSQL{

	protected Connection conn =null;	//Connection对象
	protected Statement  stmt =null ;	//Statement对象
	protected ResultSet  rs = null;		//记录结果集
	protected String     sqlStr=new String();//SQL语句
	 
	public DBSQL() {
		try
		{
			sqlStr = "";
			DBconnection dcm = new DBconnection();
			conn = dcm.getConnection();
			stmt = conn.createStatement();
		}
		catch (Exception e) {
			System.out.println(e);
		}
		
	}

	public Statement getStmt() {
		return stmt;
	}

	public Connection getConn() {
		return conn;
	}

	public ResultSet getRs() {
		return rs;
	}

	public void setSqlStr(String newSqlStr) {
		this.sqlStr=newSqlStr;
	}


	public String getSqlStr() {
		return sqlStr;
	}

	public void Query() throws Exception  {		
		rs = stmt.executeQuery(sqlStr);
	}

	
	public void Update() throws Exception  {	
		stmt.executeUpdate(sqlStr);
	}
	
	public void close() throws SQLException {
		if ( stmt != null ) {
			stmt.close();
			stmt = null;
		}
		conn.close();
		conn = null;
	}

};
