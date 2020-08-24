package EWILL;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class DepositsDao {
	Connection con = null;

	DbConn dbcon = new DbConn();

	public ArrayList<DepositsPojo> Fetch() throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		ArrayList<DepositsPojo> data = new ArrayList<DepositsPojo>();
		ResultSet rs = stmt.executeQuery("select * from deposits");

		while(rs.next())
		{
			DepositsPojo obj = new DepositsPojo();
			obj.setDepositsId(rs.getInt(1));
			obj.setUserId(rs.getInt(2));
			obj.setHolderName(rs.getString(3));
			obj.setBankName(rs.getString(4));
			obj.setBankAddress(rs.getString(5));
			obj.setNominee(rs.getString(6));
			obj.setAmount(rs.getInt(7));
			obj.setDateOfMaturity(rs.getString(8));
			data.add(obj);
		}
		return data;
	}

	public int Add(String ... data) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		DepositsPojo pojo = new DepositsPojo();
		pojo.setUserId(Integer.parseInt(data[0]));
		pojo.setHolderName(data[1]);
		pojo.setBankName(data[2]);
		pojo.setBankAddress(data[3]);
		pojo.setNominee(data[4]);
		pojo.setAmount(Integer.parseInt(data[5]));
		pojo.setDateOfMaturity(data[6]);

		int i = stmt.executeUpdate("insert into deposits (user_id , holder_name , bank_name , bank_add, nominee "
				+ ", amount , date_of_maturity) values ('"+ pojo.getUserId()+ "','" +pojo.getHolderName() +"','"+
				pojo.getBankName() + "','" + pojo.getBankAddress()+ "','" + pojo.getNominee()+"','"
				+pojo.getAmount()+"','"+pojo.getDateOfMaturity()+"')"); 
		return i;
	}

	public int Remove(int depositsId) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		int i = stmt.executeUpdate("delete from deposits where d_id = '"+ depositsId +"'");
		return i;

	}

	public ArrayList<DepositsPojo> Edit(int depositsId) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		ArrayList<DepositsPojo> pojo = new ArrayList<DepositsPojo>();
		ResultSet rs = stmt.executeQuery("select * from deposits where d_id = '"+ depositsId +"'");
		rs.next();
		DepositsPojo obj = new DepositsPojo();
		obj.setDepositsId(rs.getInt(1));
		obj.setUserId(rs.getInt(2));
		obj.setHolderName(rs.getString(3));
		obj.setBankName(rs.getString(4));
		obj.setBankAddress(rs.getString(5));
		obj.setNominee(rs.getString(6));
		obj.setAmount(rs.getInt(7));
		obj.setDateOfMaturity(rs.getString(8));
		pojo.add(obj);
		return pojo;
	}

	public int Update(String... data) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		DepositsPojo pojo = new DepositsPojo();

		pojo.setDepositsId(Integer.parseInt(data[0]));
		pojo.setUserId(Integer.parseInt(data[1]));
		pojo.setHolderName(data[2]);
		pojo.setBankName(data[3]);
		pojo.setBankAddress(data[4]);
		pojo.setNominee(data[5]);
		pojo.setAmount(Integer.parseInt(data[6]));
		pojo.setDateOfMaturity(data[7]);
		
		int i = stmt.executeUpdate("update deposits set user_id = '"+ pojo.getUserId() +"', holder_name = '" 
		+ pojo.getHolderName() +"', bank_name = '" +pojo.getBankName() +"', bank_add = '"+ pojo.getBankAddress()
		+"', nominee = '"+pojo.getNominee()+"', amount = '"+pojo.getAmount()+"', date_of_maturity = '"
		+pojo.getDateOfMaturity()+"' where d_id = '"+pojo.getDepositsId()+"'");
		return i;
	}
	
	public ArrayList<DepositsPojo> FetchByUser(int userId) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		ArrayList<DepositsPojo> pojo = new ArrayList<DepositsPojo>();
		ResultSet rs = stmt.executeQuery("select * from deposits where user_id = '"+ userId +"'");
		while(rs.next()){
		DepositsPojo obj = new DepositsPojo();
		obj.setDepositsId(rs.getInt(1));
		obj.setUserId(rs.getInt(2));
		obj.setHolderName(rs.getString(3));
		obj.setBankName(rs.getString(4));
		obj.setBankAddress(rs.getString(5));
		obj.setNominee(rs.getString(6));
		obj.setAmount(rs.getInt(7));
		obj.setDateOfMaturity(rs.getString(8));
		pojo.add(obj);
		}
		return pojo;
	}

}
