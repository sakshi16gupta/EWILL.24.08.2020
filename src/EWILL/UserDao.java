package EWILL;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;



public class UserDao {
	Connection con = null;
	
	DbConn dbcon = new DbConn();
	
	public ArrayList<UserPojo> Fetch() throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		ArrayList<UserPojo> data = new ArrayList<UserPojo>();
		ResultSet rs = stmt.executeQuery("select * from user");
		
		while(rs.next())
		{
			UserPojo obj = new UserPojo();
			obj.setUserId(rs.getInt(1));
			obj.setFirstName(rs.getString(2));
			obj.setLastName(rs.getString(3));
			obj.setEmail(rs.getString(4));
			obj.setPassword(rs.getString(5));
			data.add(obj);
		}
		return data;
	}
	
	public int Add(String ... data) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		UserPojo pojo = new UserPojo();
		pojo.setFirstName(data[0]);
		pojo.setLastName(data[1]);
		pojo.setEmail(data[2]);
		pojo.setPassword(data[3]);
		
		int i = stmt.executeUpdate("insert into user (first_name , last_name , email, password) values ('"+
		pojo.getFirstName()+ "','" + pojo.getLastName() + "','" 
				+ pojo.getEmail() + "','" + pojo.getPassword()+"')"); 
		return i;
	}
	
	public int Remove(int userId) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		int i = stmt.executeUpdate("delete from user where user_id = '"+ userId +"'");
		return i;
		
	}
	
	public ArrayList<UserPojo> Edit(int userId) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		ArrayList<UserPojo> pojo = new ArrayList<UserPojo>();
		ResultSet rs = stmt.executeQuery("select * from user where user_id = '"+ userId +"'");
		rs.next();
		UserPojo obj = new UserPojo();
		obj.setUserId(rs.getInt(1));
		obj.setFirstName(rs.getString(2));
		obj.setLastName(rs.getString(3));
		obj.setEmail(rs.getString(4));
		obj.setPassword(rs.getString(5));
		pojo.add(obj);
		return pojo;
	}
	
	public int Update(String... data) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		UserPojo pojo = new UserPojo();
		pojo.setUserId(Integer.parseInt(data[0]));
		pojo.setFirstName(data[1]);
		pojo.setLastName(data[2]);
		pojo.setEmail(data[3]);
		pojo.setPassword(data[4]);
		
		int i = stmt.executeUpdate("update user set first_name = '"+
		pojo.getFirstName() +"', last_name = '" + pojo.getLastName() +"', email = '" +
		pojo.getEmail() +"', password = '" + pojo.getPassword() 
		+"' where user_id = '" +pojo.getUserId()+"'");
		return i;
	}
	public int checkUser(String... data) throws Exception{
		int i = 0;
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		UserPojo user = new UserPojo();
		user.setEmail(data[0]);
		user.setPassword(data[1]);
		
		ResultSet rs = stmt.executeQuery("select count(*) from user where email = '" +
		user.getEmail()+ "'and password ='" + user.getPassword() + "';");
		rs.next();
		i = rs.getInt(1);
		return i;
	}
	
	public ArrayList<UserPojo> profile(String email) throws Exception
	{
		con = dbcon.getConnect();
		ArrayList<UserPojo> data = new ArrayList<UserPojo>();
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("select * from user where email = '"+email+"'");
		rs.next();
		UserPojo obj = new UserPojo();
		obj.setUserId(rs.getInt(1));
		obj.setFirstName(rs.getString(2));
		obj.setLastName(rs.getString(3));
		obj.setEmail(rs.getString(3));
		obj.setPassword(rs.getString(4));
		data.add(obj);
		
		return data;
	}
	
	public boolean checkUserPojo(String email) throws Exception{

		UserPojo theUserPojo = null;
		
		Connection myConn = null;
		PreparedStatement myStmt = null;
		ResultSet myRs = null;
		
		
		// get db connection
		myConn = dbcon.getConnect();
			
		// create sql to get selected student
		String sql = "select * from user where email = ?";
		
		// create prepared statement
		myStmt = myConn.prepareStatement(sql);
		
		// set the param values for the student
		myStmt.setString(1, email);
		
		//execute statement
		myRs = myStmt.executeQuery();
		
		// retrieve data from result set row
		if(myRs.next()) {
				return true;
			}
		else {
			return false;
		}	
	}
}
