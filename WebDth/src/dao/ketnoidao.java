package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ketnoidao {
	public Connection cn;
	public void ketnoi() throws Exception{
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		System.out.print("Da xac dinh duoc hetqtcsdl");
		String url ="jdbc:sqlserver://DESKTOP-5KN3KP2:1433;databaseName=QlDth;user=sa;password=123";
			cn=DriverManager.getConnection(url);
			System.out.print("Da ket noi");
	}
}