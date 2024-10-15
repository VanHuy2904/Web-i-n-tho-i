package bean;

import java.util.Date;

public class xacnhanbean {
//	private long mahd;
	private long makh;
	private String tendth;
	private long soluongmua;
	private long thanhtien;
	private boolean tinhtrang;
	private long macthd;
	private java.util.Date ngaymua;
	private long gia;
	public xacnhanbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public xacnhanbean(long makh, String tendth, 
			long soluongmua, long thanhtien, boolean tinhtrang,
			long macthd, java.util.Date ngaymua,
			long gia) {
		super();
//		this.mahd = mahd;
		this.makh = makh;
		this.tendth = tendth;
		this.soluongmua = soluongmua;
		this.thanhtien = thanhtien;
		this.tinhtrang = tinhtrang;
		this.macthd = macthd;
		this.ngaymua = ngaymua;
		this.gia=gia;
	}
//	public long getMahd() {
//		return mahd;
//	}
//	public void setMahd(long mahd) {
//		this.mahd = mahd;
//	}
	public long getMakh() {
		return makh;
	}
	public void setMakh(long makh) {
		this.makh = makh;
	}
	public String getTendth() {
		return tendth;
	}
	public void setTendth(String tendth) {
		this.tendth = tendth;
	}
	public long getSoluongmua() {
		return soluongmua;
	}
	public void setSoluongmua(long soluongmua) {
		this.soluongmua = soluongmua;
	}
	public long getThanhtien() {
		return thanhtien;
	}
	public void setThanhtien(long thanhtien) {
		this.thanhtien = thanhtien;
	}
	public boolean isTinhtrang() {
		return tinhtrang;
	}
	public void setTinhtrang(boolean tinhtrang) {
		this.tinhtrang = tinhtrang;
	}
	public long getMacthd() {
		return macthd;
	}
	public void setMacthd(long macthd) {
		this.macthd = macthd;
	}
	public Date getNgaymua() {
		return ngaymua;
	}
	public void setNgaymua(java.util.Date ngaymua) {
		this.ngaymua = ngaymua;
	}
	public long getGia() {
		return gia;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	
	
}
