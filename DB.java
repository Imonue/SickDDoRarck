package Database;
import java.sql.*;
import Infomation.*;

public class DB {
	
	public static DB instance = new DB(); //�̱���
	
	private Connection conn;
	private Statement stmt;
	
	//////////////////////////Constructor/////////////////////////////
	DB(){
		System.out.println("Data Base ��ü ����");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost/sikddorack", "sikddorark", "1234");	
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
		String sql = "select * from store where stoid = '"+sto_id + "'";
		System.out.println(sql);
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
		String sql = "select * from customer where cusid = '"+cus_id + "'";
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
	
	public void UpdateStoUser(Store store, String sto_id) {
		String sql = "update store set stopw = '" + store.getSto_pw() + "', stotel = '" + store.getSto_tel() + "', stophone = '" + store.getSto_phone() + "', stomaxtable = " + store.getSto_max_table() + " where stoid = '" + sto_id + "'";
		System.out.println(sql);
		try {
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void UpdateCusUser(Customer customer, String cus_id) {
		String sql = "update customer set cuspw = '" + customer.getCus_pw() + "', cusphone = '" + customer.getCus_phone() + "'" + "where cusid = '" + cus_id + "'";
		System.out.println(sql);
		try {
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void AddReser(Reservation reser) {
		try {
			String sql = "insert into reservation values(current_timestamp(),'"
					+reser.getCus_id() + ",'"
					+reser.getSto_id() + "','"
					+reser.getSto_name() + "','"
					+reser.getRes_date() + "','"
					+reser.getCus_count() + ")";
			System.out.println(sql);
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public Reservation GetStoReser(String sto_id) {
		Reservation reser = new Reservation();
		String sql = "select * from reservation where stoid = '"+sto_id+"' order by resid";
		try {
			ResultSet rs = stmt.executeQuery(sql);
			rs.next();
			reser.setRes_id(rs.getString("resid"));
			reser.setCus_id(rs.getString("cusid"));
			reser.setSto_id(rs.getString("stoid"));
			reser.setSto_name(rs.getString("stoname"));
			reser.setRes_date(rs.getString("resdate"));
			reser.setCus_count(rs.getInt("cuscount"));
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return reser;
	}
	
	public Reservation GetCusReser(String cus_id) {
		Reservation reser = new Reservation();
		String sql = "select * from reservation where cusid = '"+cus_id+"'";
		try {
			ResultSet rs = stmt.executeQuery(sql);
			rs.next();
			reser.setRes_id(rs.getString("resid"));
			reser.setCus_id(rs.getString("cusid"));
			reser.setSto_id(rs.getString("stoid"));
			reser.setSto_name(rs.getString("stoname"));
			reser.setRes_date(rs.getString("resdate"));
			reser.setCus_count(rs.getInt("cuscount"));
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return reser;
	}
	
	public void DeleteReser(String cus_id, String sto_id) {
		try {
			String sql = "delete from reservation where cusid = '"+cus_id+"' and stoid = '"+sto_id+"'";
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void AddResercom(Reservation_com reser_com) {
		try {
			String sql = "insert into reservation_com values('"
					+reser_com.getRes_id_com() + ",'"
					+reser_com.getCus_id_com() + ",'"
					+reser_com.getSto_id_com() + "','"
					+reser_com.getSto_name_com() + "','"
					+reser_com.getRes_date_com() + "','"
					+reser_com.getCus_count_com() + ")";
			System.out.println(sql);
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public Reservation_com GetStoResercom(String sto_id) {
		Reservation_com reser_com = new Reservation_com();
		String sql = "select * from reservation_com where stoid = '"+sto_id+"' order by resid";
		try {
			ResultSet rs = stmt.executeQuery(sql);
			rs.next();
			reser_com.setRes_id_com(rs.getString("resid_com"));
			reser_com.setCus_id_com(rs.getString("cusid_com"));
			reser_com.setSto_id_com(rs.getString("stoid_com"));
			reser_com.setSto_name_com(rs.getString("stoname_com"));
			reser_com.setRes_date_com(rs.getString("resdate_com"));
			reser_com.setCus_count_com(rs.getInt("cuscount_com"));
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return reser_com;
	}
	
	public Reservation_com GetCusResercom(String cus_id) {
		Reservation_com reser_com = new Reservation_com();
		String sql = "select * from reservation_com where cusid = '"+cus_id+"'";
		try {
			ResultSet rs = stmt.executeQuery(sql);
			rs.next();
			reser_com.setRes_id_com(rs.getString("resid_com"));
			reser_com.setCus_id_com(rs.getString("cusid_com"));
			reser_com.setSto_id_com(rs.getString("stoid_com"));
			reser_com.setSto_name_com(rs.getString("stoname_com"));
			reser_com.setRes_date_com(rs.getString("resdate_com"));
			reser_com.setCus_count_com(rs.getInt("cuscount_com"));
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return reser_com;
	}
	
	public void DeleteResercom(String cus_id, String sto_id) {
		try {
			String sql = "delete from reservation_com where cusid = '"+cus_id+"' and stoid = '"+sto_id+"'";
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
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
