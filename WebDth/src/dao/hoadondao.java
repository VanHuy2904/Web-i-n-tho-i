package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Date;

public class hoadondao {
	public int Them(long makh) throws Exception{
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		String sql = "Insert into hoadon (makh, ngaymua, tinhtrang) values (?, ?, ?)";
				//b3 tao cau lenh
				PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, makh);
		Date n1 = new Date();
		SimpleDateFormat dd = new SimpleDateFormat("yyyy-MM-dd");
		
		
		// Doi ngay until sang chuoi theo dinh dang
		String tam = dd.format(n1);
		Date n2 = dd.parse(tam); // Doi chuoi ra ngay util
		//Doi ngay Util sang ngay sql va dua vao tham so 
		cmd.setDate(2, new java.sql.Date(n2.getTime()));
		cmd.setBoolean(3, false);
		int kq = cmd.executeUpdate();
		cmd.close(); kn.cn.close();
		return kq;
		
	}
	public long getMaxHD() throws Exception{
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		String sql = "select max(Mahd) Max_MAHD from hoadon";
				//b3 tao cau lenh
				PreparedStatement cmd = kn.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();	
		long max = 0;
		if(rs.next()) {
			max=rs.getLong(1);
		}
	rs.close(); kn.cn.close();
	return max;
	}
}
