package bo;

import java.util.ArrayList;

import bean.dienthoaibean;
import dao.dienthoaidao;

public class dienthoaibo {
	dienthoaidao dthdao = new dienthoaidao();
	ArrayList<dienthoaibean> ds;
	
	public ArrayList<dienthoaibean> getdth() throws Exception{
		ds = dthdao.getdth();
		return ds;
	}
	public ArrayList<dienthoaibean> TimMa(String maloai) throws Exception{
		ArrayList<dienthoaibean> tam = new ArrayList<dienthoaibean>();
		for(dienthoaibean s: ds) 
			if(s.getMaloai().equals(maloai))
				tam.add(s);
		
		return tam;
	}
	
	public ArrayList<dienthoaibean> Tim(String key) throws Exception{
		ArrayList<dienthoaibean> tam = new ArrayList<dienthoaibean>();
		for(dienthoaibean s: ds)
			if(s.getTendth().toLowerCase().contains(key.toLowerCase() ))
				tam.add(s);
		return tam;

	}
	
	public ArrayList<dienthoaibean> thongtin(String tendt) throws Exception{
		ArrayList<dienthoaibean> tam = new ArrayList<dienthoaibean>();
		for(dienthoaibean s: ds) {
			if(s.getTendth().equals(tendt)) {
				tam.add(s);
			}
		}
		return tam;
	}
	public int CapNhap(String tendth) throws Exception{
		return dthdao.CapNhap(tendth);
	}
	public ArrayList<dienthoaibean> getdthln() throws Exception{
		ds = dthdao.getdthln();
		return ds;
	}
	
	public int themdt(String tendt, long soluong, long gia, String maloai, String anh, long soluongdaban)	throws Exception{
		return dthdao.themdt(tendt, soluong, gia, maloai, anh, soluongdaban);
	}
	public int CapNhap(String madth, String tendth, long soluong, String maloai, long gia, String anh, long soluongdaban) throws Exception{
		return dthdao.CapNhap(madth, tendth, soluong, maloai, gia, anh, soluongdaban);
	}
	public int Xoa(String madth) throws Exception{
		return dthdao.Xoa(madth);
	}
	
	
	
}
