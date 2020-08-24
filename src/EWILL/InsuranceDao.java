package EWILL;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class InsuranceDao {
	Connection con = null;

	DbConn dbcon = new DbConn();

	public ArrayList<InsurancePojo> Fetch() throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		ArrayList<InsurancePojo> data = new ArrayList<InsurancePojo>();
		ResultSet rs = stmt.executeQuery("select * from insurance");

		while(rs.next())
		{
			InsurancePojo obj = new InsurancePojo();
			obj.setInsuranceId(rs.getInt(1));
			obj.setUserId(rs.getInt(2));
			obj.setName(rs.getString(3));
			obj.setType(rs.getString(4));
			obj.setProvider(rs.getString(5));
			obj.setPolicyNo(rs.getString(6));
			obj.setPremiumAmount(rs.getInt(7));
			obj.setDueDate(rs.getString(8));
			obj.setSumAssured(rs.getInt(9));
			data.add(obj);
		}
		return data;
	}
	
	public int Add(String ... data) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		InsurancePojo pojo = new InsurancePojo();
		pojo.setUserId(Integer.parseInt(data[0]));
		pojo.setName(data[1]);
		pojo.setType(data[2]);
		pojo.setProvider(data[3]);
		pojo.setPolicyNo(data[4]);
		pojo.setPremiumAmount(Integer.parseInt(data[5]));
		pojo.setDueDate(data[6]);
		pojo.setSumAssured(Integer.parseInt(data[7]));
		
		int i = stmt.executeUpdate("insert into insurance (user_id , name , type, provider , policy_no, "
		+ "premium_amount , due_date , sum_assured) values ('"+ pojo.getUserId()+ "','" + pojo.getName() 
		+ "','" + pojo.getType()+ "','" + pojo.getProvider()+ "','" + pojo.getPolicyNo() + "','" 
		+pojo.getPremiumAmount()+"','"+pojo.getDueDate()+"','"+ pojo.getSumAssured()+"')"); 
		return i;
	}
	
	public int Remove(int insuranceId) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		int i = stmt.executeUpdate("delete from insurance where ins_id = '"+ insuranceId +"'");
		return i;
		
	}
	
	public ArrayList<InsurancePojo> Edit(int insuranceId) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		ArrayList<InsurancePojo> pojo = new ArrayList<InsurancePojo>();
		ResultSet rs = stmt.executeQuery("select * from insurance where ins_id = '"+ insuranceId +"'");
		rs.next();
		InsurancePojo obj = new InsurancePojo();
		obj.setInsuranceId(rs.getInt(1));
		obj.setUserId(rs.getInt(2));
		obj.setName(rs.getString(3));
		obj.setType(rs.getString(4));
		obj.setProvider(rs.getString(5));
		obj.setPolicyNo(rs.getString(6));
		obj.setPremiumAmount(rs.getInt(7));
		obj.setDueDate(rs.getString(8));
		obj.setSumAssured(rs.getInt(9));
		pojo.add(obj);
		return pojo;
	}
	
	public int Update(String... data) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		InsurancePojo pojo = new InsurancePojo();
		
		pojo.setInsuranceId(Integer.parseInt(data[0]));
		pojo.setUserId(Integer.parseInt(data[1]));
		pojo.setName(data[2]);
		pojo.setType(data[3]);
		pojo.setProvider(data[4]);
		pojo.setPolicyNo(data[5]);
		pojo.setPremiumAmount(Integer.parseInt(data[6]));
		pojo.setDueDate(data[7]);
		pojo.setSumAssured(Integer.parseInt(data[8]));
		
		int i = stmt.executeUpdate("update insurance set user_id = '"+
		pojo.getUserId() +"', name = '" + pojo.getName() +"', type = '" +pojo.getType() 
		+"', provider = '" + pojo.getProvider() +"', policy_no = '" + pojo.getPolicyNo() +"', premium_amount = '" 
		+ pojo.getPremiumAmount()+"', due_date = '" + pojo.getDueDate()+"', sum_assured = '" + pojo.getSumAssured()
		+"' where ins_id = '" +pojo.getInsuranceId()+"'");
		return i;
	}
	
	public ArrayList<InsurancePojo> FetchByUser(int userId) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		ArrayList<InsurancePojo> pojo = new ArrayList<InsurancePojo>();
		ResultSet rs = stmt.executeQuery("select * from insurance where user_id = '"+ userId +"'");
		while(rs.next()) {
		InsurancePojo obj = new InsurancePojo();
		obj.setInsuranceId(rs.getInt(1));
		obj.setUserId(rs.getInt(2));
		obj.setName(rs.getString(3));
		obj.setType(rs.getString(4));
		obj.setProvider(rs.getString(5));
		obj.setPolicyNo(rs.getString(6));
		obj.setPremiumAmount(rs.getInt(7));
		obj.setDueDate(rs.getString(8));
		obj.setSumAssured(rs.getInt(9));
		pojo.add(obj);
		}
		return pojo;
	}
	
}
