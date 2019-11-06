package Database;
import java.sql.*;

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
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//////////////////////////Method/////////////////////////////
	public void AddStoUser(Store store) {
		try {
			stmt.executeUpdate("insert into store values('"
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
					+0
					+")");
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
