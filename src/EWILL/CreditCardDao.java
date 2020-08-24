package EWILL;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class CreditCardDao {
	Connection con = null;

	DbConn dbcon = new DbConn();

	public ArrayList<CreditCardPojo> Fetch() throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		ArrayList<CreditCardPojo> data = new ArrayList<CreditCardPojo>();
		ResultSet rs = stmt.executeQuery("select * from credit_card");

		while(rs.next())
		{
			CreditCardPojo obj = new CreditCardPojo();
			obj.setCardId(rs.getInt(1));
			obj.setUserId(rs.getInt(2));
			obj.setCardNo(rs.getString(3));
			obj.setBankName(rs.getString(4));
			obj.setCardName(rs.getString(5));
			obj.setExpiryDate(rs.getString(6));
			data.add(obj);
		}
		return data;
	}
	
	public int Add(String ... data) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		CreditCardPojo pojo = new CreditCardPojo();
		pojo.setUserId(Integer.parseInt(data[0]));
		pojo.setCardNo(data[1]);
		pojo.setBankName(data[2]);
		pojo.setCardName(data[3]);
		pojo.setExpiryDate(data[4]);
		
		int i = stmt.executeUpdate("insert into credit_card (user_id , card_no , bank_name , card_name, "
		+ "expiry_date) values ('"+ pojo.getUserId()+ "','" +pojo.getCardNo() +"','"+ pojo.getBankName() +
		"','" + pojo.getCardName()+ "','" + pojo.getExpiryDate()+"')"); 
		return i;
	}
	
	public int Remove(int cardId) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		int i = stmt.executeUpdate("delete from credit_card where card_id = '"+ cardId +"'");
		return i;
		
	}
	
	public ArrayList<CreditCardPojo> Edit(int cardId) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		ArrayList<CreditCardPojo> pojo = new ArrayList<CreditCardPojo>();
		ResultSet rs = stmt.executeQuery("select * from credit_card where card_id = '"+ cardId +"'");
		rs.next();
		CreditCardPojo obj = new CreditCardPojo();
		obj.setCardId(rs.getInt(1));
		obj.setUserId(rs.getInt(2));
		obj.setCardNo(rs.getString(3));
		obj.setBankName(rs.getString(4));
		obj.setCardName(rs.getString(5));
		obj.setExpiryDate(rs.getString(6));
		pojo.add(obj);
		return pojo;
	}
	
	public int Update(String... data) throws Exception
	{
		con = dbcon.getConnect();
		Statement stmt = con.createStatement();
		CreditCardPojo pojo = new CreditCardPojo();
		
		pojo.setCardId(Integer.parseInt(data[0]));
		pojo.setUserId(Integer.parseInt(data[1]));
		pojo.setCardNo(data[2]);
		pojo.setBankName(data[3]);
		pojo.setCardName(data[4]);
		pojo.setExpiryDate(data[5]);
		
		int i = stmt.executeUpdate("update credit_card set user_id = '"+ pojo.getUserId() +
		"', card_no = '" + pojo.getCardNo() +"', bank_name = '" +pojo.getBankName() +"', card_name = '"+
		pojo.getCardName()+"', expiry_date = '"+pojo.getExpiryDate()+"' where card_id = '"+pojo.getCardId()+"'");
		return i;
				
		
	}
}
