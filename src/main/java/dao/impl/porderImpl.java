package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.DbConnection;
import dao.porderDao;
import model.porder;

public class porderImpl implements porderDao{

	public static void main(String[] args) {

		//1.add(p)
//		porder p=new porder("test",1,2,3);
//		new porderImpl().add(p);
		
		
		//2.queryAll();
//		List<porder> l = new porderImpl().queryAll();
//
//		for(porder p : l) {
//			 System.out.println(p.getId()+"\t"+p.getName());
//		}
		
		//3.querySum
//		List<porder> l=new porderImpl().querySum(8000, 10000);
//		
//		for(porder p:l)
//		{
//			System.out.println(p.getId()+"\t"+p.getName());
//		}
		
		
		//4.queryId(1);
//		porder p=new porderImpl().queryId(2);
//		
//		System.out.println(p.getId()+"\t"+p.getName());
//	
		
		//5. update(porder p)
//		porder p=new porderImpl().queryId(3);
//		p.setProduct1(1);
//		p.setProduct2(8);
//		p.setProduct3(3);
//		p.getSum();
//		
//		new porderImpl().update(p);
		
		//6.delete(id)
//		new porderImpl().delete(5);
		
	}

	@Override
	public void add(porder p) {
		Connection conn=DbConnection.getDb();
		String SQL="insert into porder(name,product1,product2,product3,sum) "
				+ "values(?,?,?,?,?)";
		
		try {
			PreparedStatement ps=conn.prepareStatement(SQL);
			ps.setString(1, p.getName());
			ps.setInt(2, p.getProduct1());
			ps.setInt(3, p.getProduct2());
			ps.setInt(4, p.getProduct3());
			ps.setInt(5, p.getSum());
			
			
			ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

	public List<porder> queryAll() {
		Connection conn=DbConnection.getDb();
		String SQL="select * from porder";
		List<porder> l=new ArrayList();
		try {
			PreparedStatement ps=conn.prepareStatement(SQL);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				porder p=new porder();
				p.setId(rs.getInt("id"));
				p.setName(rs.getString("name"));
				p.setProduct1(rs.getInt("product1"));
				p.setProduct2(rs.getInt("product2"));
				p.setProduct3(rs.getInt("product3"));
				p.setSum(rs.getInt("sum"));
				
				
				l.add(p);
				
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return l;
	}

	@Override
	public List<porder> querySum(int start, int end) {
		Connection conn=DbConnection.getDb();
		String SQL="select * from porder where sum>=? and sum<=?";
		List<porder> l=new ArrayList();
		try {
			PreparedStatement ps=conn.prepareStatement(SQL);
			ps.setInt(1, start);
			ps.setInt(2, end);
			
			
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				porder p=new porder();
				p.setId(rs.getInt("id"));
				p.setName(rs.getString("name"));
				p.setProduct1(rs.getInt("product1"));
				p.setProduct2(rs.getInt("product2"));
				p.setProduct3(rs.getInt("product3"));
				p.setSum(rs.getInt("sum"));
				
				
				l.add(p);
				
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return l;
	}

	@Override
	public porder queryId(int id) {
		Connection conn=DbConnection.getDb();
		String SQL="select * from porder where id=?";
		porder p=null;
		try {
			PreparedStatement ps=conn.prepareStatement(SQL);
			ps.setInt(1, id);
			
			ResultSet rs=ps.executeQuery();
			
			if(rs.next())
			{
				p=new porder();
				p.setId(rs.getInt("id"));
				p.setName(rs.getString("name"));
				p.setProduct1(rs.getInt("product1"));
				p.setProduct2(rs.getInt("product2"));
				p.setProduct3(rs.getInt("product3"));
				p.setSum(rs.getInt("sum"));
			}
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		return p;
	}

	@Override
	public void update(porder p) {
		Connection conn=DbConnection.getDb();
		String SQL="update porder set name=?,product1=?,product2=?,product3=?,sum=? where id=?";
		
		try {
			PreparedStatement ps=conn.prepareStatement(SQL);
			ps.setString(1, p.getName());
			ps.setInt(2, p.getProduct1());
			ps.setInt(3, p.getProduct2());
			ps.setInt(4, p.getProduct3());
			ps.setInt(5, p.getSum());
			ps.setInt(6, p.getId());
			
			
			ps.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	
		@Override
		public void delete(int id) {
			Connection conn=DbConnection.getDb();
			String SQL="delete from porder where id=?";
			
			try {
				PreparedStatement ps=conn.prepareStatement(SQL);
				ps.setInt(1, id);
				
				ps.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}

}