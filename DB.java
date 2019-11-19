package Database;
import java.sql.*;

import Infomation.Customer;
import Infomation.Store;

public class DB {
	
	public static DB instance = new DB(); //教臂沛
	
	private Connection conn;
	private Statement stmt;
	
	//////////////////////////Constructor/////////////////////////////
	DB(){
		System.out.println("Data Base 按眉 积己");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost/sickddorark", "root", "Kk5255014!");	
			this.stmt = conn.createStatement();				
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void finalize() {
		try {
			stmt.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//////////////////////////Method/////////////////////////////
	public void AddStoUser(Store store) {
		try {
			String sql = "insert into store values('"
					+store.getSto_id() + "','"
					+store.getSto_pw() + "','"
					+store.getSto_name() + "','"
					+store.getSto_phone() + "','"
					+store.getSto_tel() + "','"
					+store.getSto_type() + "','"
					+store.getSto_addr() + "',"
					+store.getSto_lati() + ","
					+store.getSto_longi() + ","
					+store.getSto_max_table() + ","
					+0 +","
					+true
					+")";
			System.out.println(sql);
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void AddCusUser(Customer cus) {
		try {
			stmt.executeUpdate("insert into customer values('"
					+cus.getCus_id() + "','"
					+cus.getCus_pw() + "','"
					+cus.getCus_name() + "','"
					+cus.getCus_phone() + "'"
					+")");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public Store GetStoUser(String sto_id) {
		Store store = new Store();
		String sql = "select * from store where stoid = "+sto_id;
		try {
			ResultSet rs = stmt.executeQuery(sql);
			rs.next();
			
			store.setSto_id(rs.getString("stoid"));
			store.setSto_pw(rs.getString("stopw"));
			store.setSto_name(rs.getString("stoname"));
			store.setSto_tel(rs.getString("stotel"));
			store.setSto_phone(rs.getString("stophone"));
			store.setSto_type(rs.getString("stotype"));
			store.setSto_addr(rs.getString("stoaddr"));
			store.setSto_lati(rs.getFloat("stolati"));
			store.setSto_longi(rs.getFloat("stolongi"));
			store.setSto_max_table(rs.getInt("stomaxtable"));
			store.setSto_now_table(rs.getInt("stocurtable")); 
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		return store;
	}
	
	public Customer GetCusUser(String cus_id) {
		Customer customer = new Customer();
		String sql = "select * from customer where cusid = "+cus_id;
		try {
			ResultSet rs = stmt.executeQuery(sql);
			rs.next();
			customer.setCus_id(rs.getString("cusid"));
			customer.setCus_pw(rs.getString("cuspw"));
			customer.setCus_name(rs.getString("cusname"));
			customer.setCus_phone(rs.getString("cusphone"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return customer;
	}
	
	public boolean LoginCusUser(String id, String pw) {
		String sql = "Select * from customer where cusid = '" + id + "' and cuspw = '" + pw + "'";
		try {
			ResultSet rs = this.stmt.executeQuery(sql);
			if(rs.next()) {
				System.out.println("Name : " + rs.getString("cusname"));
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean LoginStoUser(String id, String pw) {
		String sql = "select * from store where stoid = '" + id + "' and stopw = '" + pw + "'";
		System.out.println(sql);
		try {
			ResultSet rs = this.stmt.executeQuery(sql);
			if(rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	//////////////////////////Getter/Setter/////////////////////////////
	
	public void SetConnection(Connection conn) {
		this.conn = conn;
	}
	public Connection GetConnection() {
		return this.conn;
	}
	public void SetStatement(Statement stmt) {
		this.stmt = stmt;
	}
	public Statement GetStatement() {
		return this.stmt;
	}
	
	
}
