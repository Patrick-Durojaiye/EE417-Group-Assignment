
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Admin1_Change_DOA {
	//db connection object
	//Connection conn_1 = null;
	
	//db connection parameters
	private String dbUrl = "jdbc:mysql://localhost:3306/bank_app_db";
	private String dbUname = "root";
	private String dbPassword = "&j6xS:%8p3dt&8q$";
	private String dbDriver = "com.mysql.cj.jdbc.Driver"; 
	
	//db connection driver setup
	public void loadDriver(String dbDriver) {
		try {
			Class.forName(dbDriver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//db connection 
	public Connection getConnection(){
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(dbUrl, dbUname, dbPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
	
	//insert data to bd table
	public boolean insert(Admin1_Change admin1_change){
		loadDriver(dbDriver);
		Connection conn = getConnection();
		
		String sql = "INSERT INTO admin1_change_table VALUES(?,?,?,?,?)";
		
		PreparedStatement ps;
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, admin1_change.getOld_name());
			ps.setString(2, admin1_change.getNew_name());
			ps.setString(3, admin1_change.getOld_password());
			ps.setString(4, admin1_change.getNew_password());
			ps.setString(5, admin1_change.getBank_balance());
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
		return true;
	}
	
	
}
