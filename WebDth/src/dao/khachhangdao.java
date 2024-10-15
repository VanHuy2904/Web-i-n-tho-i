package dao;

import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.concurrent.ExecutionException;

import bean.khachhangbean;

public class khachhangdao {
	public int themkh(String hoten, String email, String diachi, String sdt, String username, String password) 
	throws Exception{
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		String sql = "Insert into KhachHang (hoten, email, diachi, SDT, username, password) values (?, ?, ?, ?, ?, ?)";
				//b3 tao cau lenh
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, hoten);
		cmd.setString(2, email);

		cmd.setString(3, diachi);
		cmd.setString(4, sdt);
		cmd.setString(5, username);
		cmd.setString(6, password);
		
		// Doi ngay until sang chuoi theo dinh dang
		
		int kq = cmd.executeUpdate();
		cmd.close(); kn.cn.close();
		return kq;
	}
}
