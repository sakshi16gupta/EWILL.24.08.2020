package EWILL;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class DocumentsTypeDao {
Connection con = null;
	
	DbConn dbcon = new DbConn();
	
	public ArrayList<DocumentsTypePojo> Fetch() throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		ArrayList<DocumentsTypePojo> data = new ArrayList<DocumentsTypePojo>();
		ResultSet rs = stmt.executeQuery("select * from documents_type");
		
		while(rs.next())
		{
			DocumentsTypePojo obj = new DocumentsTypePojo();
			obj.setDocId(rs.getInt(1));
			obj.setDocType(rs.getString(2));
			data.add(obj);
		}
		return data;
	}
	
	public int Add(String ... data) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		DocumentsTypePojo pojo = new DocumentsTypePojo();
		pojo.setDocType(data[0]);
		int i=stmt.executeUpdate("insert into documents_type (documents_type) values ('"+pojo.getDocType()+"')"); 
		return i;
	}
	
	public int Remove(int docTypeId) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		int i = stmt.executeUpdate("delete from documents_type where doc_type_id = '"+ docTypeId +"'");
		return i;
		
	}
	
	public ArrayList<DocumentsTypePojo> Edit(int docTypeId) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		ArrayList<DocumentsTypePojo> pojo = new ArrayList<DocumentsTypePojo>();
		ResultSet rs = stmt.executeQuery("select * from documents_type where doc_type_id = '"+ docTypeId +"'");
		rs.next();
		DocumentsTypePojo obj = new DocumentsTypePojo();
		obj.setDocId(rs.getInt(1));
		obj.setDocType(rs.getString(2));
		pojo.add(obj);
		return pojo;
	}
	
	public int Update(String... data) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		DocumentsTypePojo pojo = new DocumentsTypePojo();
		
		pojo.setDocId(Integer.parseInt(data[0]));
		pojo.setDocType(data[1]);
		
		int i = stmt.executeUpdate("update documents_type set documents_type = '"+
		pojo.getDocType() +"' where doc_type_id = '" +pojo.getDocId()+"'");
		return i;
				
		
	}
	
	public int Type(String docType) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("select doc_type_id from documents_type where documents_type = '"
		+ docType +"'");
		rs.next();
		return rs.getInt(1);
	}

	public String Type(int docType) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("select documents_type from documents_type where doc_type_id = '"
		+ docType +"'");
		rs.next();
		return rs.getString(1);
	}
}
