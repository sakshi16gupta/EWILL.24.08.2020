package EWILL;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class EmergencyDao {
	Connection con = null;

	DbConn dbcon = new DbConn();

	public ArrayList<EmergencyPojo> Fetch() throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		ArrayList<EmergencyPojo> data = new ArrayList<EmergencyPojo>();
		ResultSet rs = stmt.executeQuery("select * from emergency");

		while(rs.next())
		{
			EmergencyPojo obj = new EmergencyPojo();
			obj.setEmergencyId(rs.getInt(1));
			obj.setUserId(rs.getInt(2));
			obj.setContactsId(rs.getInt(3));
			obj.setName(rs.getString(4));
			obj.setPhone(rs.getString(5));
			data.add(obj);
		}
		return data;
	}
	
	public int Add(String ... data) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		EmergencyPojo pojo = new EmergencyPojo();
		pojo.setUserId(Integer.parseInt(data[0]));
		pojo.setContactsId(Integer.parseInt(data[1]));
		pojo.setName(data[2]);
		pojo.setPhone(data[3]);
		
		int i = stmt.executeUpdate("insert into emergency (user_id , contacts_id , name , phone) values ('"+
		pojo.getUserId()+ "','" + pojo.getContactsId() + "','" + pojo.getName()+"','"+pojo.getPhone()+ "')"); 
		return i;
	}
	
	public int Remove(int emergencyId) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		int i = stmt.executeUpdate("delete from emergency where emergency_id = '"+ emergencyId +"'");
		return i;
		
	}
	
	public ArrayList<EmergencyPojo> Edit(int emergencyId) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		ArrayList<EmergencyPojo> pojo = new ArrayList<EmergencyPojo>();
		ResultSet rs = stmt.executeQuery("select * from emergency where emergency_id = '"+ emergencyId +"'");
		rs.next();
		EmergencyPojo obj = new EmergencyPojo();
		obj.setEmergencyId(rs.getInt(1));
		obj.setUserId(rs.getInt(2));
		obj.setContactsId(rs.getInt(3));
		obj.setName(rs.getString(4));
		obj.setPhone(rs.getString(5));
		pojo.add(obj);
		return pojo;
	}
	
	public int Update(String... data) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		EmergencyPojo pojo = new EmergencyPojo();
		
		pojo.setEmergencyId(Integer.parseInt(data[0]));
		pojo.setUserId(Integer.parseInt(data[1]));
		pojo.setContactsId(Integer.parseInt(data[2]));
		pojo.setName(data[3]);
		pojo.setPhone(data[4]);
		
		int i = stmt.executeUpdate("update emergency set user_id = '"+ pojo.getUserId() +"', contacts_id = '" 
		+ pojo.getContactsId() +"', name = '" +pojo.getName()+"', phone = '" +pojo.getPhone()+
		"' where emergency_id = '" +pojo.getEmergencyId()+"'");
		return i;	
	}
	public ArrayList<EmergencyPojo> FetchByUser(int userId) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		ArrayList<EmergencyPojo> pojo = new ArrayList<EmergencyPojo>();
		ResultSet rs = stmt.executeQuery("select * from emergency where user_id = '"+ userId +"'");
		while(rs.next()) {
		EmergencyPojo obj = new EmergencyPojo();
		obj.setEmergencyId(rs.getInt(1));
		obj.setUserId(rs.getInt(2));
		obj.setContactsId(rs.getInt(3));
		obj.setName(rs.getString(4));
		obj.setPhone(rs.getString(5));
		pojo.add(obj);
		}
		return pojo;
	}
}
