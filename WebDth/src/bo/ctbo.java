package bo;

import java.util.ArrayList;

import bean.xacnhanbean;
import dao.chitietHDdao;

public class ctbo {
	chitietHDdao ctbo = new chitietHDdao();
	public int Them(String Madth, long Soluongmua, long MaHoaDon) throws Exception{
		return ctbo.Them(Madth, Soluongmua, MaHoaDon);
	}
	
	public int CapNhap(long machitietHD) throws Exception{
		return ctbo.CapNhap(machitietHD);
	}
	
	public ArrayList<xacnhanbean> gethoadon() throws Exception{
		return ctbo.gethoadon();
	}
}
