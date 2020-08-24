package EWILL;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class BankDao {
	Connection con = null;

	DbConn dbcon = new DbConn();

	public ArrayList<BankPojo> Fetch() throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		ArrayList<BankPojo> data = new ArrayList<BankPojo>();
		ResultSet rs = stmt.executeQuery("select * from bank");

		while(rs.next())
		{
			BankPojo obj = new BankPojo();
			obj.setBankId(rs.getInt(1));
			obj.setUserId(rs.getInt(2));
			obj.setFirstHolder(rs.getString(3));
			obj.setBankName(rs.getString(4));
			obj.setBankAdd(rs.getString(5));
			obj.setAccntNo(rs.getString(6));
			obj.setNominee(rs.getString(7));
			data.add(obj);
		}
		return data;
	}
	
	public int Add(String ... data) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		BankPojo pojo = new BankPojo();
		pojo.setUserId(Integer.parseInt(data[0]));
		pojo.setFirstHolder(data[1]);
		pojo.setBankName(data[2]);
		pojo.setBankAdd(data[3]);
		pojo.setAccntNo(data[4]);
		pojo.setNominee(data[5]);
		
		int i = stmt.executeUpdate("insert into bank (user_id , first_holder , bank_name, bank_add , accnt_no, nominee) values ('"+
		pojo.getUserId()+ "','" + pojo.getFirstHolder() + "','" + pojo.getBankName()+ "','" +
		pojo.getBankAdd()+ "','" + pojo.getAccntNo() + "','" + pojo.getNominee()+"')"); 
		return i;
	}
	
	public int Remove(int bankId) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		int i = stmt.executeUpdate("delete from bank where bank_id = '"+ bankId +"'");
		return i;
		
	}
	
	public ArrayList<BankPojo> Edit(int bankId) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		ArrayList<BankPojo> pojo = new ArrayList<BankPojo>();
		ResultSet rs = stmt.executeQuery("select * from bank where bank_id = '"+ bankId +"'");
		rs.next();
		BankPojo obj = new BankPojo();
		obj.setBankId(rs.getInt(1));
		obj.setUserId(rs.getInt(2));
		obj.setFirstHolder(rs.getString(3));
		obj.setBankName(rs.getString(4));
		obj.setBankAdd(rs.getString(5));
		obj.setAccntNo(rs.getString(6));
		obj.setNominee(rs.getString(7));
		pojo.add(obj);
		return pojo;
	}
	
	public int Update(String... data) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		BankPojo pojo = new BankPojo();
		
		pojo.setBankId(Integer.parseInt(data[0]));
		pojo.setUserId(Integer.parseInt(data[1]));
		pojo.setFirstHolder(data[2]);
		pojo.setBankName(data[3]);
		pojo.setBankAdd(data[4]);
		pojo.setAccntNo(data[5]);
		pojo.setNominee(data[6]);
		
		int i = stmt.executeUpdate("update bank set user_id = '"+
		pojo.getUserId() +"', first_holder = '" + pojo.getFirstHolder() +"', bank_name = '" +pojo.getBankName() 
		+"', bank_add = '" + pojo.getBankAdd() +"', accnt_no = '" + pojo.getAccntNo() +"', nominee = '" + pojo.getNominee()
		+"' where bank_id = '" +pojo.getBankId()+"'");
		return i;
	}
	
	public ArrayList<BankPojo> FetchByUser(int userId) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		ArrayList<BankPojo> pojo = new ArrayList<BankPojo>();
		ResultSet rs = stmt.executeQuery("select * from bank where user_id = '"+ userId +"'");
		while(rs.next()) {
		BankPojo obj = new BankPojo();
		obj.setBankId(rs.getInt(1));
		obj.setUserId(rs.getInt(2));
		obj.setFirstHolder(rs.getString(3));
		obj.setBankName(rs.getString(4));
		obj.setBankAdd(rs.getString(5));
		obj.setAccntNo(rs.getString(6));
		obj.setNominee(rs.getString(7));
		pojo.add(obj);
		}
		return pojo;
	}
	
}
