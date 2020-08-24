package EWILL;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class AdvisorsDao {
Connection con = null;
	
	DbConn dbcon = new DbConn();
	
	public ArrayList<AdvisorsPojo> Fetch() throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		ArrayList<AdvisorsPojo> data = new ArrayList<AdvisorsPojo>();
		ResultSet rs = stmt.executeQuery("select * from advisors");
		
		while(rs.next())
		{
			AdvisorsPojo obj = new AdvisorsPojo();
			obj.setAdvisorsId(rs.getInt(1));
			obj.setUserId(rs.getInt(2));
			obj.setName(rs.getString(3));
			obj.setAddress(rs.getString(4));
			obj.setContact(rs.getString(5));
			obj.setEmail(rs.getString(6));
			obj.setAdvisorsType(rs.getInt(7));
			data.add(obj);
		}
		return data;
	}
	
	public int Add(String ... data) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		AdvisorsPojo pojo = new AdvisorsPojo();
		pojo.setUserId(Integer.parseInt(data[0]));
		pojo.setName(data[1]);
		pojo.setAddress(data[2]);
		pojo.setContact(data[3]);
		pojo.setEmail(data[4]);
		pojo.setAdvisorsType(Integer.parseInt(data[5]));
		
		int i = stmt.executeUpdate("insert into advisors (user_id , name , address, contact , email , advisors_type_id) values ('"+
		pojo.getUserId()+ "','" + pojo.getName() + "','" + pojo.getAddress()+ "','" + pojo.getContact() + "','" + 
		pojo.getEmail()+ "','" + pojo.getAdvisorsType() + "')"); 
		return i;
	}
	
	public int Remove(int AdvisorsId) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		int i = stmt.executeUpdate("delete from Advisors where Advisors_id = '"+ AdvisorsId +"'");
		return i;
		
	}
	
	public ArrayList<AdvisorsPojo> Edit(int advisorsId) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		ArrayList<AdvisorsPojo> pojo = new ArrayList<AdvisorsPojo>();
		ResultSet rs = stmt.executeQuery("select * from advisors where advisors_id = '"+ advisorsId +"'");
		rs.next();
		AdvisorsPojo obj = new AdvisorsPojo();
		obj.setAdvisorsId(rs.getInt(1));
		obj.setUserId(rs.getInt(2));
		obj.setName(rs.getString(3));
		obj.setAddress(rs.getString(4));
		obj.setContact(rs.getString(5));
		obj.setEmail(rs.getString(6));
		obj.setAdvisorsId(rs.getInt(7));
		pojo.add(obj);
		return pojo;
	}
	
	public int Update(String... data) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		AdvisorsPojo pojo = new AdvisorsPojo();
		
		pojo.setAdvisorsId(Integer.parseInt(data[0]));
		pojo.setUserId(Integer.parseInt(data[1]));
		pojo.setName(data[2]);
		pojo.setAddress(data[3]);
		pojo.setContact(data[4]);
		pojo.setEmail(data[5]);
		pojo.setAdvisorsType(Integer.parseInt(data[6]));
		
		int i = stmt.executeUpdate("update advisors set user_id = '"+
		pojo.getUserId() +"', name = '" + pojo.getName() +"', address = '" +pojo.getAddress() +
		"', contact = '" + pojo.getContact() +"', email = '" + pojo.getEmail() +"', advisors_type_id = '" + pojo.getAdvisorsType() 
		+"' where advisors_id = '" +pojo.getAdvisorsId()+"'");
		return i;

	}
	
	public ArrayList<AdvisorsPojo> FetchByUser(int userId) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		ArrayList<AdvisorsPojo> pojo = new ArrayList<AdvisorsPojo>();
		ResultSet rs = stmt.executeQuery("select * from advisors where user_id = '"+ userId +"'");
		while(rs.next()) {
		AdvisorsPojo obj = new AdvisorsPojo();
		obj.setAdvisorsId(rs.getInt(1));
		obj.setUserId(rs.getInt(2));
		obj.setName(rs.getString(3));
		obj.setAddress(rs.getString(4));
		obj.setContact(rs.getString(5));
		obj.setEmail(rs.getString(6));
		obj.setAdvisorsId(rs.getInt(7));
		pojo.add(obj);
		}
		return pojo;
	}
	
}
