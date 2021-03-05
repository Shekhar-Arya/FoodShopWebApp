package DAOClassHandler;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DataBaseConnectionClass 
{

	public void adduser(String fullname, String username, String password) throws ClassNotFoundException, SQLException
	{
		String sql = "INSERT INTO login VALUES (?,?,?);";
		Class.forName("org.postgresql.Driver");
		Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Rutvik","postgres","shekhar");
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, fullname);
		st.setString(2, username);
		st.setString(3, password);
		st.executeUpdate();
		con.close();
	}
	
	public ResultSet getuser(String username ,String password) throws ClassNotFoundException, SQLException
	{
		String sql = "select * from login where username=? and password=?";
		Class.forName("org.postgresql.Driver");
		Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Rutvik","postgres","shekhar");
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, username);
		st.setString(2, password);
		ResultSet res = st.executeQuery();
		con.close();
		return res;
	}
	
	public void addorder(String username, String email, String phonenumber, String address, ProductClass pc, Double total) throws ClassNotFoundException, SQLException
	{
		String sql = "INSERT INTO orderhistory VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
		Class.forName("org.postgresql.Driver");
		Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Rutvik","postgres","shekhar");
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, username);
		st.setString(2, email);
		st.setString(3, phonenumber);
		st.setString(4, address);
		st.setInt(5, pc.getNachos());
		st.setInt(6, pc.getKhakhra());
		st.setInt(7, pc.getPoha());
		st.setInt(8, pc.getGathiya());
		st.setInt(9, pc.getBhakharvadi());
		st.setInt(10, pc.getChanadal());
		st.setInt(11, pc.getBananawafer());
		st.setInt(12, pc.getPotatowafer());
		st.setInt(13, pc.getMethipuri());
		st.setInt(14, pc.getMungdal());
		st.setInt(15, pc.getPickle());
		st.setInt(16, pc.getMasalapuri());
		st.setDouble(17, total);
		st.executeUpdate();
		con.close();
	}
	
	public ResultSet getorders(String username) throws ClassNotFoundException, SQLException
	{
		String sql = "select * from orderhistory where username=?";
		Class.forName("org.postgresql.Driver");
		Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Rutvik","postgres","shekhar");
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, username);
		ResultSet res = st.executeQuery();
		con.close();
		return res;
	}
	
	public void addjoiner(String email, String phonenumber, String adharnumber, String address) throws ClassNotFoundException, SQLException
	{
		String sql = "INSERT INTO joinus VALUES (?,?,?,?);";
		Class.forName("org.postgresql.Driver");
		Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Rutvik","postgres","shekhar");
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, email);
		st.setString(2, phonenumber);
		st.setString(3, adharnumber);
		st.setString(4, address);
		st.executeUpdate();
		con.close();
	}
}
