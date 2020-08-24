package EWILL;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class AdvisorsTypeDao {
	Connection con = null;
	
	DbConn dbcon = new DbConn();
	
	public ArrayList<AdvisorsTypePojo> Fetch() throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		ArrayList<AdvisorsTypePojo> data = new ArrayList<AdvisorsTypePojo>();
		ResultSet rs = stmt.executeQuery("select * from advisors_type");
		
		while(rs.next())
		{
			AdvisorsTypePojo obj = new AdvisorsTypePojo();
			obj.setAdvisorTypeId(rs.getInt(1));
			obj.setAdvisorType(rs.getString(2));
			data.add(obj);
		}
		return data;
	}
	
	public int Add(String ... data) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		AdvisorsTypePojo pojo = new AdvisorsTypePojo();
		pojo.setAdvisorType(data[0]);
		int i = stmt.executeUpdate("insert into advisors_type (advisors_type) values ('"+ pojo.getAdvisorType()+"')"); 
		return i;
	}
	
	public int Remove(int advisorsTypeId) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		int i = stmt.executeUpdate("delete from advisors_type where advisors_type_id = '"+ advisorsTypeId +"'");
		return i;
		
	}
	
	public ArrayList<AdvisorsTypePojo> Edit(int advisorsTypeId) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		ArrayList<AdvisorsTypePojo> pojo = new ArrayList<AdvisorsTypePojo>();
		ResultSet rs = stmt.executeQuery("select * from advisors_type where advisors_type_id = '"+ advisorsTypeId +"'");
		rs.next();
		AdvisorsTypePojo obj = new AdvisorsTypePojo();
		obj.setAdvisorTypeId(rs.getInt(1));
		obj.setAdvisorType(rs.getString(2));
		pojo.add(obj);
		return pojo;
	}
	
	public int Update(String... data) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		AdvisorsTypePojo pojo = new AdvisorsTypePojo();
		
		pojo.setAdvisorTypeId(Integer.parseInt(data[0]));
		pojo.setAdvisorType(data[1]);
		
		int i = stmt.executeUpdate("update advisors_type set advisors_type = '"+
		pojo.getAdvisorType() +"' where advisors_type_id = '" +pojo.getAdvisorTypeId()+"'");
		return i;
				
		
	}
	
	public int Type(String advisorsType) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("select advisors_type_id from advisors_type where advisors_type = '"+ advisorsType +"'");
		rs.next();
		return rs.getInt(1);
	}

	public String Type(int advisorsType) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("select advisors_type from advisors_type where advisors_type_id = '"+ advisorsType +"'");
		rs.next();
		return rs.getString(1);
	}
}
