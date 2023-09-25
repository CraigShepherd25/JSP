package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dao.DbConnection;
import dao.memberDao;
import model.member;

public class memberImpl implements memberDao{

	public static void main(String[] args) {
		System.out.println(new memberImpl().queryUsername("aaaa"));

	}

	@Override
	public void add(member m) {
		Connection conn=DbConnection.getDb();
		String SQL="insert into member(name,username,password,address,phone) "
				+ "values(?,?,?,?,?)";
		try {
			PreparedStatement ps=conn.prepareStatement(SQL);
			ps.setString(1, m.getName());
			ps.setString(2, m.getUsername());
			ps.setString(3,m.getPassword());
			ps.setString(4, m.getAddress());
			ps.setString(5, m.getPhone());
			
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public member queryMember(String username, String password) {
		Connection conn=DbConnection.getDb();
		String SQL="select * from member where username=? and password=?";
		member m=null;
		
		try {
			PreparedStatement ps=conn.prepareStatement(SQL);
			ps.setString(1, username);
			ps.setString(2, password);
			
			ResultSet rs=ps.executeQuery();
			
			if(rs.next())
			{
				m=new member();
				m.setId(rs.getInt("id"));
				m.setName(rs.getString("name"));
				m.setUsername(rs.getString("username"));
				m.setPassword(rs.getString("password"));
				m.setAddress(rs.getString("address"));
				m.setPhone(rs.getString("phone"));
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		
		return m;
	}

	@Override
	public boolean queryUsername(String username) {
		Connection conn=DbConnection.getDb();
		String SQL="select * from member where username=?";
		boolean x=false;
		try {
			PreparedStatement ps=conn.prepareStatement(SQL);
			ps.setString(1, username);
			
			ResultSet rs=ps.executeQuery();
			
			if(rs.next())
			{
				x=true;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		
		
		return x;
	}

}