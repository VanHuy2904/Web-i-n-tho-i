package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import bean.xacnhanbean;

public class chitietHDdao {
	public int Them(String Madth, long Soluongmua, long MaHoaDon) throws Exception{
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		String sql = "Insert into ChiTietHoaDon (Madth, Soluongmua, mahd, tinhtrang) values (?, ?, ?, ?)";
				//b3 tao cau lenh
				PreparedStatement cmd = kn.cn.prepareStatement(sql);
				//Truyen 4 tham so vao cau lenh sql
				cmd.setString(1, Madth);
				cmd.setLong(2, Soluongmua);
				cmd.setLong(3, MaHoaDon);
				cmd.setBoolean(4, false);
				int kq = cmd.executeUpdate();
				cmd.close();kn.cn.close();
				return kq;

	}
	public int CapNhap(long machitietHD) throws Exception{
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		String sql = "update chitiethoadon\r\n" + 
				"set tinhtrang = 1\r\n" + 
				"where macthd = ?";
				//b3 tao cau lenh
				PreparedStatement cmd = kn.cn.prepareStatement(sql);
				//Truyen 4 tham so vao cau lenh sql
				cmd.setLong(1, machitietHD);
				int kq = cmd.executeUpdate();
				cmd.close();kn.cn.close();
				return kq;
		
	}
	
	public ArrayList<xacnhanbean> gethoadon() throws Exception{
		ArrayList<xacnhanbean> ds = new ArrayList<xacnhanbean>();
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		String sql = "select * from Vxacnhan\r\n" + 
				"order by macthd DESC";
				//b3 tao cau lenh
				PreparedStatement cmd = kn.cn.prepareStatement(sql);
		// b4 thuc hien cau lenh
		ResultSet rs = cmd.executeQuery();
		//b5 duyet rs de luu vao ds
		while(rs.next()) {
		
			long makh = rs.getLong("makh");
			String tendth = rs.getString("tendth");
			long gia = rs.getLong("gia");
			Date ngaymua = rs.getDate("NgayMua");
			long soluongmua = rs.getLong("soluongmua");
			boolean tinhtrang=rs.getBoolean("tinhtrang");
			long thanhtien = rs.getLong("ThanhTien");
			long macthd = rs.getLong("macthd");
			
			ds.add(new xacnhanbean(makh, tendth, soluongmua, thanhtien, tinhtrang, macthd, ngaymua, gia));
		}
		rs.close(); kn.cn.close();

		return ds;
	}

}
