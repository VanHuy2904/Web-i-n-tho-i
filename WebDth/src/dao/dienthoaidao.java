package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.concurrent.ExecutionException;

import bean.dienthoaibean;

public class dienthoaidao {
	public ArrayList<dienthoaibean> getdth() throws Exception{
		ArrayList<dienthoaibean> ds = new ArrayList<dienthoaibean>();
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		String sql = "Select * from dthoai";
				//b3 tao cau lenh
				PreparedStatement cmd = kn.cn.prepareStatement(sql);
		// b4 thuc hien cau lenh
		ResultSet rs = cmd.executeQuery();
		//b5 duyet rs de luu vao ds
		while(rs.next()) {
			String madth = rs.getString("madth");
			String tendth =rs.getString("tendth");
			long soluong = rs.getLong("soluong");
			String maloai = rs.getString("maloai");
			long gia = rs.getLong("gia");
			String anh = rs.getString("anh");
			long sldb = rs.getLong("soluongdaban");
			
			ds.add(new dienthoaibean(madth, tendth, soluong, maloai, gia, anh, sldb));
		}
		rs.close(); kn.cn.close();

		return ds;
	}
	public int CapNhap(String tendth) throws Exception{
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		String sql = "update dthoai set soluongdaban = soluongdaban + 1 where tendth = ?";
				//b3 tao cau lenh
				PreparedStatement cmd = kn.cn.prepareStatement(sql);
				//Truyen 4 tham so vao cau lenh sql
				cmd.setString(1, tendth);
				int kq = cmd.executeUpdate();
				cmd.close();kn.cn.close();
				return kq;
		
	}
	public ArrayList<dienthoaibean> getdthln() throws Exception{
		ArrayList<dienthoaibean> ds = new ArrayList<dienthoaibean>();
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		String sql = "Select * from dthoai order by soluongdaban desc";
				//b3 tao cau lenh
				PreparedStatement cmd = kn.cn.prepareStatement(sql);
		// b4 thuc hien cau lenh
		ResultSet rs = cmd.executeQuery();
		//b5 duyet rs de luu vao ds
		while(rs.next()) {
			String madth = rs.getString("madth");
			String tendth =rs.getString("tendth");
			long soluong = rs.getLong("soluong");
			String maloai = rs.getString("maloai");
			long gia = rs.getLong("gia");
			String anh = rs.getString("anh");
			long sldb = rs.getLong("soluongdaban");
			
			ds.add(new dienthoaibean(madth, tendth, soluong, maloai, gia, anh, sldb));
		}
		rs.close(); kn.cn.close();

		return ds;
	}
	public int themdt(String tendt, long soluong, long gia, String maloai, String anh, long soluongdaban)	throws Exception{
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		String sql = "Insert into dthoai(tendth, soluong, maloai, gia, anh, soluongdaban) "
				+ "values (?, ?, ?, ?, ?, ? )";
				//b3 tao cau lenh
				PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, tendt);
		cmd.setLong(2, soluong);
		cmd.setLong(4, gia);
		cmd.setString(3, maloai);
		cmd.setString(5, anh);
		cmd.setLong(6, soluongdaban);
		int kq = cmd.executeUpdate();
		cmd.close(); kn.cn.close();
		return kq;
	}
	
	public int CapNhap(String madth, String tendth, long soluong, String maloai, long gia, String anh, long soluongdaban) throws Exception{
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		String sql = "update dthoai\r\n" + 
				"set tendth = ?, soluong = ?, maloai = ?, gia = ?, anh = ?, soluongdaban = ?\r\n" + 
				"where madth = ?";
				//b3 tao cau lenh
				PreparedStatement cmd = kn.cn.prepareStatement(sql);
				//Truyen 4 tham so vao cau lenh sql
				cmd.setString(1, tendth);
				cmd.setLong(2, soluong);
				cmd.setString(3, maloai);
				cmd.setLong(4, gia);
				cmd.setString(5, anh);
				cmd.setLong(6, soluongdaban);
				cmd.setString(7, madth);
				int kq = cmd.executeUpdate();
				cmd.close();kn.cn.close();
				return kq;
		
	}
	
	public int Xoa(String madth) throws Exception{
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		String sql = "delete from dthoai where madth = ?";
				//b3 tao cau lenh
				PreparedStatement cmd = kn.cn.prepareStatement(sql);
				//Truyen 4 tham so vao cau lenh sql
				cmd.setString(1, madth);
				int kq = cmd.executeUpdate();
				cmd.close();kn.cn.close();
				return kq;
		
	}
	
	
	
	
	}

