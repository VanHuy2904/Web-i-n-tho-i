package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import bean.lichsubean;

public class lichsudao {
	public ArrayList<lichsubean> getlichsu() throws Exception{
		ArrayList<lichsubean> ds = new ArrayList<lichsubean>();
		ketnoidao kn = new ketnoidao();
		kn.ketnoi();
		String sql = "select * from Vlichsu\r\n" + 
				"order by DAY(NgayMua) DESC";
				//b3 tao cau lenh
				PreparedStatement cmd = kn.cn.prepareStatement(sql);
		// b4 thuc hien cau lenh
		ResultSet rs = cmd.executeQuery();
		//b5 duyet rs de luu vao ds
		while(rs.next()) {
			String madth = rs.getString("madth");
			String tendth =rs.getString("tendth");
			String soluongmua = rs.getString("SoLuongMua");
			Date ngaymua = rs.getDate("ngaymua");
			System.out.println(rs.getDate("ngaymua").toString());
			long gia = rs.getLong("gia");
			Boolean tinhtrang = rs.getBoolean("tinhtrang");
			long thanhtien = rs.getLong("thanhtien");
			long makh = rs.getLong("makh");
			String anh = rs.getString("Anh");
			ds.add(new lichsubean(madth, tendth, soluongmua, ngaymua, gia, tinhtrang, thanhtien, makh, anh));
		}
		rs.close(); kn.cn.close();

		return ds;
	}
}
