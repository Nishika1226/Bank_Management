package bms;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DbService {
	
		Connection  con=null;
		public DbService() 
		{
			try
			{
				Class.forName("com.mysql.cj.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank?user=root&password=puchu123");
				
			}
			catch (Exception e) 
			{
			
			}
			
		}
		public boolean check(Userinfo u)
		{
			boolean isvalid = false;
			try 
			{
			PreparedStatement ps = con.prepareStatement("select * from userinfo where uname = ? and password = ?");
			ps.setString(1, u.getName());
			ps.setString(2, u.getPassword());
			ResultSet rs = ps.executeQuery();
			if(rs.next()==true)
			{
				isvalid=true;	
			}
			else
			{
				isvalid=false;
			}
			}
			catch (Exception e) 
			{
				
				System.out.println("erroe in sql");
			}
			return isvalid;
			
		}
	public int registerUser(Userinfo u)
	{
		int x=0;
		try
		{
			
			PreparedStatement ps = con.prepareStatement("insert into userinfo values(?,?)");
			ps.setString(1, u.getName());
			ps.setString(2, u.getPassword());
			x = ps.executeUpdate();
			
		}
		catch(SQLException e)
		{
			System.out.println("Error in sql statements");
		}
		return x;
	}
	
	public int addAccount(Account a)
	{
		int x =0;
		try {
	 

			PreparedStatement ps = con.prepareStatement("insert into account values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, a.getAcno());
			ps.setString(2, a.getFname());
			ps.setString(3, a.getLname());
			ps.setString(4, a.getAdhar());
			ps.setString(5, a.getDob());
			ps.setString(6, a.getGender());
			ps.setString(7, a.getEmail());
			ps.setString(8, a.getMno());
			ps.setString(9, a.getAddress());
			ps.setString(10, a.getState());
			ps.setString(11, a.getCity());
			ps.setString(12, a.getPcode());
			ps.setString(13, a.getAtype());
			ps.setInt(14, a.getBal());
			
			x = ps.executeUpdate();

		}
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		return x;
		}
	
	public int ModifyAccount(Account a)
	{
		int x =0;
		try {
	 

			PreparedStatement ps = con.prepareStatement("update account set fname=?,lname=?,adhar=?,dob=?,gender=?,mail=?,mno=?,address=?,state=?,city=?,pin=?,actype=? where accno=?");
			
			ps.setString(1, a.getFname());
			ps.setString(2, a.getLname());
			ps.setString(3, a.getAdhar());
			ps.setString(4, a.getDob());
			ps.setString(5, a.getGender());
			ps.setString(6, a.getEmail());
			ps.setString(7, a.getMno());
			ps.setString(8, a.getAddress());
			ps.setString(9, a.getState());
			ps.setString(10, a.getCity());
			ps.setString(11, a.getPcode());
			ps.setString(12, a.getAtype());
			ps.setString(13, a.getAcno());
			x = ps.executeUpdate();

		}
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		return x;
		}
	
	public Account getAccount(Account a)
	{
		Account a2=new Account();
		try {
	 

			PreparedStatement ps = con.prepareStatement("select * from account where accno=?");
			ps.setString(1,a.getAcno());
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
			    a2.setAcno(rs.getString("accno"));
			    a2.setFname(rs.getString("fname"));
				a2.setLname(rs.getString("lname"));
				a2.setAdhar(rs.getString("adhar"));
				a2.setMno(rs.getString("mno"));
				a2.setAtype(rs.getString("actype"));
				a2.setBal(rs.getInt("bal"));
			}

		}
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		return a2;
		}
	
	public int withdraw(Account a) {
		int x=0;
		
		try {
		PreparedStatement ps = con.prepareStatement("select * from account where accno=?");
		ps.setString(1, a.getAcno());
		ResultSet rs = ps.executeQuery();
		if(rs.next()==true)
		{

			PreparedStatement ps2 = con.prepareStatement("insert into transaction(accno,withdraw)values(?,?)");
			ps2.setString(1, a.getAcno());
			ps2.setInt(2, a.getAmt()); 
			x = ps2.executeUpdate();
			PreparedStatement ps3 = con.prepareStatement("update transaction set date=current_timestamp");
			ps3.executeUpdate();
			PreparedStatement ps1 = con.prepareStatement("update account set bal=bal-? where accno=?");
			ps1.setInt(1, a.getAmt()); 
			ps1.setString(2, a.getAcno());
			ps1.executeUpdate();
			
		}	
		}
		catch(SQLException e)
		{
			System.out.println("Error in sql statements");
		}
		
		
		return x;
	} 
	
	public int deposit(Account a) {
		int x=0;
		
		try {
		PreparedStatement ps0 = con.prepareStatement("select * from account where accno=?");
		ps0.setString(1, a.getAcno());
		ResultSet rs = ps0.executeQuery();
		if(rs.next()==true)
		{
			PreparedStatement ps = con.prepareStatement("insert into transaction(accno,deposit)values(?,?)");
			ps.setString(1, a.getAcno());
			ps.setInt(2, a.getAmt());
			x = ps.executeUpdate();
			PreparedStatement ps3 = con.prepareStatement("update transaction set date=current_timestamp");
			ps3.executeUpdate();
			PreparedStatement ps1 = con.prepareStatement("update account set bal=bal+? where accno=?");
			ps1.setInt(1, a.getAmt()); 
			ps1.setString(2, a.getAcno());
			ps1.executeUpdate();	
		}
		
		}
		catch(SQLException e)
		{
			System.out.println("Error in sql statements");
		}
		
		
		return x;
	}
	

	public int delete(Account a) {
		
		int x=0;
	
	try {

		PreparedStatement ps = con.prepareStatement("delete from account where accno=?");
		ps.setString(1,a.getAcno());
		x = ps.executeUpdate();
		
		} 
	  catch (Exception e) {
		// TODO: handle exception
		System.out.println("error in sql query");
		e.printStackTrace();
	}
    return x;

}
	public int online(Account a,Userinfo u) {
		int x=0;
		
		try {
			PreparedStatement ps2 = con.prepareStatement("select * from userinfo where uname=? and password=?");
			ps2.setString(1, u.getName());
			ps2.setString(2, u.getPassword());
			ResultSet rs = ps2.executeQuery();
			if(rs.next()==true)
			{
		      PreparedStatement ps0 = con.prepareStatement("select * from account where accno=?");
		      ps0.setString(1, a.getAcno());
		      ResultSet rs1 = ps0.executeQuery();
		      if(rs1.next()==true)
		   {
			PreparedStatement ps = con.prepareStatement("insert into money_transfer(accno1,accno2,amount)values(?,?,?)");
			ps.setString(1, a.getAcno());
			ps.setString(2, a.getAcno2());
			ps.setInt(3, a.getAmt());
			x = ps.executeUpdate();
			PreparedStatement ps3 = con.prepareStatement("update money_transfer set date=current_timestamp");
			ps3.executeUpdate();
			
			PreparedStatement pst = con.prepareStatement("insert into transaction(accno,deposit)values(?,?)");
			pst.setString(1, a.getAcno2());
			pst.setInt(2, a.getAmt());
			pst.executeUpdate();
			PreparedStatement pst2 = con.prepareStatement("update transaction set date=current_timestamp");
			pst2.executeUpdate();
			
			PreparedStatement pst3 = con.prepareStatement("insert into transaction(accno,withdraw)values(?,?)");
			pst3.setString(1, a.getAcno());
			pst3.setInt(2, a.getAmt());
			pst3.executeUpdate();
			PreparedStatement pst4 = con.prepareStatement("update transaction set date=current_timestamp");
			pst4.executeUpdate();
			
			PreparedStatement ps4 = con.prepareStatement("update account set bal=bal-? where accno=?");
			ps4.setInt(1, a.getAmt()); 
			ps4.setString(2, a.getAcno());
			ps4.executeUpdate();
			PreparedStatement ps1 = con.prepareStatement("update account set bal=bal+? where accno=?");
			ps1.setInt(1, a.getAmt()); 
			ps1.setString(2, a.getAcno2());
			ps1.executeUpdate();	
		}
		}
		
		}
		catch(SQLException e)
		{
			System.out.println("Error in sql statements");
		}
		
		
		return x;
	}
	public ArrayList getStatement(Account a)
	{
		ArrayList al = new ArrayList();
		try {
	 
			PreparedStatement ps = con.prepareStatement("select * from transaction where accno=?");
			ps.setString(1,a.getAcno());
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Account a2=new Account();
			    a2.setAcno(rs.getString("accno"));
			    a2.setWd(rs.getInt("withdraw"));
			    a2.setDp(rs.getInt("deposit"));
			    a2.setDate(rs.getString("date"));
			    al.add(a2);
			    
			  }
			
			PreparedStatement ps1 = con.prepareStatement("select bal from account where accno=?");
			ps1.setString(1,a.getAcno());
			ResultSet rs1 = ps1.executeQuery();
			while(rs1.next()) {
				Account a1=new Account();
			    a1.setBal(rs1.getInt("bal"));
			    al.add(a1);
			}

		}
		catch (SQLException e) 
		{
			System.out.println("Error in sql");
			e.printStackTrace();
		}
		return al;
		}
	public ArrayList getOnhistory(Account a)
	{
		ArrayList al = new ArrayList();
		try {
	 
			PreparedStatement ps = con.prepareStatement("select * from money_transfer where accno1=?");
			ps.setString(1,a.getAcno());
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Account a2=new Account();
			    a2.setAcno2(rs.getString("accno2"));
			    a2.setAmt(rs.getInt("amount"));
			    a2.setDate(rs.getString("date"));
			    al.add(a2);
			    
			  }
			PreparedStatement ps1 = con.prepareStatement("select bal from account where accno=?");
			ps1.setString(1,a.getAcno());
			ResultSet rs1 = ps1.executeQuery();
			while(rs1.next()) {
				Account a1=new Account();
			    a1.setBal(rs1.getInt("bal"));
			    al.add(a1);
			}

		}
		catch (SQLException e) 
		{
			System.out.println("Error in sql");
			e.printStackTrace();
		}
		return al;
		}
	
}


