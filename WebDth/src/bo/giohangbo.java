package bo;

import java.util.ArrayList;

import bean.giohangbean;

public class giohangbo {
	public ArrayList<giohangbean> ds = new ArrayList<giohangbean>();
	public void themhang(String madth, String tendth, long gia, long soluongmua, String anh)
	{
		//Kiem tra xem hang có trong ds chưa
		//Neu co tang so luong
		for(giohangbean h: ds)
			if(h.getMadth().equals(madth)) {
				h.setSoluongmua(h.getSoluongmua()+soluongmua);
				return;
			}
		giohangbean h = new giohangbean(madth, tendth, gia, soluongmua, anh);
		ds.add(h);
	}
	
	//Xoa hang ra khoi ds
	public void XoaHang(String madth) {
		for(giohangbean h: ds)
			if(h.getMadth().equals(madth)) {
				ds.remove(h);	
				return ;
			}
	}
	
	public void SuaHang(String madth, long soluongmoi) {
		int n = ds.size();
		for(int i = 0; i<n; i++) {
			giohangbean h=ds.get(i);//Lay sach thu i 
			if(h.getMadth().equals(madth)) {
				h.setSoluongmua(soluongmoi);
				ds.set(i,  h); return;
			}
		}
			
	}
	public long TongTien() {
		long s =0;
		for(giohangbean h: ds)
			 s=s+h.getThanhtien();
		
		return s;
	}
	
	public ArrayList<giohangbean> dsgio() throws Exception{
		return ds;
	}
}
