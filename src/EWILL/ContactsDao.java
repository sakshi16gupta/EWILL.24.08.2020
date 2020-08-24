package EWILL;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class ContactsDao {
Connection con = null;
	
	DbConn dbcon = new DbConn();
	
	public ArrayList<ContactsPojo> Fetch() throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		ArrayList<ContactsPojo> data = new ArrayList<ContactsPojo>();
		ResultSet rs = stmt.executeQuery("select * from contacts");
		
		while(rs.next())
		{
			ContactsPojo obj = new ContactsPojo();
			obj.setContactsId(rs.getInt(1));
			obj.setContacts(rs.getString(2));
			data.add(obj);
		}
		return data;
	}
	
	public int Add(String ... data) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		ContactsPojo pojo = new ContactsPojo();
		pojo.setContacts(data[0]);
		int i = stmt.executeUpdate("insert into contacts (contacts) values ('"+ pojo.getContacts()+"')"); 
		return i;
	}
	
	public int Remove(int contactsId) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		int i = stmt.executeUpdate("delete from contacts where contacts_id = '"+ contactsId +"'");
		return i;
		
	}
	
	public ArrayList<ContactsPojo> Edit(int contactsId) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		ArrayList<ContactsPojo> pojo = new ArrayList<ContactsPojo>();
		ResultSet rs = stmt.executeQuery("select * from contacts where contacts_id = '"+ contactsId +"'");
		rs.next();
		ContactsPojo obj = new ContactsPojo();
		obj.setContactsId(rs.getInt(1));
		obj.setContacts(rs.getString(2));
		pojo.add(obj);
		return pojo;
	}
	
	public int Update(String... data) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		ContactsPojo pojo = new ContactsPojo();
		
		pojo.setContactsId(Integer.parseInt(data[0]));
		pojo.setContacts(data[1]);
		
		int i = stmt.executeUpdate("update contacts set contacts = '"+
		pojo.getContacts() +"' where contacts_id = '" +pojo.getContactsId()+"'");
		return i;
				
		
	}
	
	public int Contacts(String contacts) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("select contacts_id from contacts where contacts = '"+ contacts +"'");
		rs.next();
		return rs.getInt(1);
	}

	public String Contacts(int contacts) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("select contacts from contacts where contacts_id = '"+ contacts +"'");
		rs.next();
		return rs.getString(1);
	}
}
