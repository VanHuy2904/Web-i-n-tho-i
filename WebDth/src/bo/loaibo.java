package bo;

import java.util.ArrayList;

import bean.loaibean;
import dao.loaidao;

public class loaibo {
	loaidao ldao = new loaidao();
	public ArrayList<loaibean> getloai() throws Exception {
		return ldao.getloai();
	}
	public int themloai(String maloai, String tenloai)	throws Exception{
		return ldao.themloai(maloai, tenloai);
	}
	public int capnhat(String tenloai, String maloai) throws Exception{
		return ldao.capnhat(tenloai, maloai);
	}
	public int Xoa(String maloai) throws Exception{
		return ldao.Xoa(maloai);
	}
}
