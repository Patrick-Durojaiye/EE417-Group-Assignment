import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Transfer_Funds_DAO {

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
		public boolean insert(Transfer_Funds transfer_funds){
			loadDriver(dbDriver);
			Connection conn = getConnection();
			
			String sql = "INSERT INTO transfer_funds_table (ACCOUNT_NO,EMAIL,MEMO,TRANSFER) VALUES(?,?,?,?)";
			
			PreparedStatement ps;
			try {
				ps = conn.prepareStatement(sql);
				ps.setString(1, transfer_funds.getAccount_no());
				ps.setString(2, transfer_funds.getEmail());
				ps.setString(3, transfer_funds.getMemo());
				ps.setString(4, transfer_funds.getTransfer());
				ps.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return false;
			}
			
			return true;
		}
}
