package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.loaibean;

public class loaidao {
	public ArrayList<loaibean> getloai() throws Exception{
		ArrayList<loaibean> ds = new ArrayList<loaibean>();

		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		String sql = "Select * from loai";
				//b3 tao cau lenh
				PreparedStatement cmd = kn.cn.prepareStatement(sql);
		// b4 thuc hien cau lenh
		ResultSet rs = cmd.executeQuery();
		//b5 duyet rs de luu vao ds
		while(rs.next()) {
			String maloai = rs.getString("maloai");
			String tenloai =rs.getString("tenloai");
			ds.add(new loaibean(maloai, tenloai));
		}
		//b6: Dog rs va ket noi
		rs.close(); kn.cn.close();
		return ds;
		
	
	}
	
	public int themloai(String maloai, String tenloai)	throws Exception{
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		String sql = "Insert into loai(maloai, tenloai) values (?, ?)";
				//b3 tao cau lenh
				PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, maloai);
		cmd.setString(2, tenloai);
		int kq = cmd.executeUpdate();
		cmd.close(); kn.cn.close();
		return kq;
	}
	
	
	public int capnhat(String tenloai, String maloai) throws Exception{
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		String sql = "update loai set tenloai = ? where maloai = ?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, tenloai);
		cmd.setString(2, maloai);
		int kq = cmd.executeUpdate();
		cmd.close();kn.cn.close();
		return kq;
	}
	
	public int Xoa(String maloai) throws Exception{
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		String sql = "delete from loai where maloai = ?";
				//b3 tao cau lenh
				PreparedStatement cmd = kn.cn.prepareStatement(sql);
				//Truyen 4 tham so vao cau lenh sql
				cmd.setString(1, maloai);
				int kq = cmd.executeUpdate();
				cmd.close();kn.cn.close();
				return kq;
		
	}
}
