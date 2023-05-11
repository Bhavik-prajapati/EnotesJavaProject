package com.DAO;

import java.sql.Connection;
import java.util.List;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.User.Post;


//import javafx.geometry.Pos;

public class PostDAO {

	private Connection con;

	public PostDAO(Connection con) {
		super();
		this.con = con;
	}

	public boolean AddNotes(String ti, String co, int ui) {

		boolean f = false;

		try {

			String query = "insert into post(title,content,uid) values(?,?,?)";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, ti);
			ps.setString(2, co);
			ps.setInt(3, ui);

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;

	}

	public List<Post> getdata(int id) {

		List<Post> list = new ArrayList<Post>();

		Post po = null;

		try {

			String query1 = "select * from post where uid=? order by id DESC";

			PreparedStatement ps = con.prepareStatement(query1);

			ps.setInt(1, id);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {

				po = new Post();

				po.setId(rs.getInt(1));
				po.setTitle(rs.getString(2));
				po.setContent(rs.getString(3));
				po.setPdate(rs.getTimestamp(4));
				list.add(po);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;

	}

	public Post getDataById(int noteId) {

		Post p = null;

		try {

			String qu = "select * from  post where id=?";
			
			PreparedStatement ps = con.prepareStatement(qu);
			ps.setInt(1, noteId);

			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				p = new Post();
				p.setId(rs.getInt(1));
				p.setTitle(rs.getString(2));
				p.setContent(rs.getString(3));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return p;

	}
	
	public boolean PostUpdate(int nid,String title,String content) {
		
		boolean f=false;
		
		
		try {
			
			String q="update post set title=?,content=? where id=?";
			PreparedStatement ps=con.prepareStatement(q);
			ps.setString(1, title);
			ps.setString(2, content);
			ps.setInt(3,nid);
			int i=ps.executeUpdate();
			
			
			if(i==1) {
				f=true;	
			}
			
		} catch (Exception e) {
			e.printStackTrace();

		}
		return f;
	}
	
	public boolean DeleteNode(int nid) {
		
		boolean f=false;
		
		try {
			
			
			String q="delete from post where id=?";
			PreparedStatement ps=con.prepareStatement(q);
			ps.setInt(1, nid);
			
			
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		return f;
		
		
	}
	
	

}

