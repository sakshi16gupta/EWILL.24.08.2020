package EWILL;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class DocumentsDao {
	Connection con = null;

	DbConn dbcon = new DbConn();

	public ArrayList<DocumentsPojo> Fetch() throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		ArrayList<DocumentsPojo> data = new ArrayList<DocumentsPojo>();
		ResultSet rs = stmt.executeQuery("select * from documents");

		while(rs.next())
		{
			DocumentsPojo obj = new DocumentsPojo();
			obj.setDocumentsId(rs.getInt(1));
			obj.setUserId(rs.getInt(2));
			obj.setDocTypeId(rs.getInt(3));
			obj.setLocation(rs.getString(4));
			data.add(obj);
		}
		return data;
	}
	
	public int Add(String ... data) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		DocumentsPojo pojo = new DocumentsPojo();
		pojo.setUserId(Integer.parseInt(data[0]));
		pojo.setDocTypeId(Integer.parseInt(data[1]));
		pojo.setLocation(data[2]);
		
		int i = stmt.executeUpdate("insert into documents (user_id , doc_type_id , location) values ('"+
		pojo.getUserId()+ "','" + pojo.getDocTypeId() + "','" + pojo.getLocation()+ "')"); 
		return i;
	}
	
	public int Remove(int documentsId) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		int i = stmt.executeUpdate("delete from documents where documents_id = '"+ documentsId +"'");
		return i;
		
	}
	
	public ArrayList<DocumentsPojo> Edit(int documentsId) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		ArrayList<DocumentsPojo> pojo = new ArrayList<DocumentsPojo>();
		ResultSet rs = stmt.executeQuery("select * from documents where documents_id = '"+ documentsId +"'");
		rs.next();
		DocumentsPojo obj = new DocumentsPojo();
		obj.setDocumentsId(rs.getInt(1));
		obj.setUserId(rs.getInt(2));
		obj.setDocTypeId(rs.getInt(3));
		obj.setLocation(rs.getString(4));
		pojo.add(obj);
		return pojo;
	}
	
	public int Update(String... data) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		DocumentsPojo pojo = new DocumentsPojo();
		
		pojo.setDocumentsId(Integer.parseInt(data[0]));
		pojo.setUserId(Integer.parseInt(data[1]));
		pojo.setDocTypeId(Integer.parseInt(data[2]));
		pojo.setLocation(data[3]);
		
		int i = stmt.executeUpdate("update documents set user_id = '"+ pojo.getUserId() +"', doc_type_id = '" + pojo.getDocTypeId() 
		+"', location = '" +pojo.getLocation()+"' where documents_id = '" +pojo.getDocumentsId()+"'");
		return i;
	}

	public ArrayList<DocumentsPojo> FetchByUser(int userId) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		ArrayList<DocumentsPojo> pojo = new ArrayList<DocumentsPojo>();
		ResultSet rs = stmt.executeQuery("select * from documents where user_id = '"+ userId +"'");
		while(rs.next()) {
		DocumentsPojo obj = new DocumentsPojo();
		obj.setDocumentsId(rs.getInt(1));
		obj.setUserId(rs.getInt(2));
		obj.setDocTypeId(rs.getInt(3));
		obj.setLocation(rs.getString(4));
		pojo.add(obj);
		}
		return pojo;
	}
}
