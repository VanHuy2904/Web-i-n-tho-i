package bean;

import java.sql.Date;
public class lichsubean {
	private String Madth;
	private String tendth;
	private String SoLuongMua;
	private java.util.Date NgayMua;
	private long gia;
	private boolean tinhtrang;
	private long thanhtien;
	private long makh;
	private String anh;
	public lichsubean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public lichsubean(String Madth, String tendth, String soLuongMua, java.util.Date ngayMua, long gia, boolean tinhtrang,
			long thanhtien, long makh, String anh) {
		super();
		this.Madth = Madth;
		this.tendth = tendth;
		SoLuongMua = soLuongMua;
		NgayMua = ngayMua;
		this.gia = gia;
		this.tinhtrang = tinhtrang;
		this.thanhtien = thanhtien;
		this.makh = makh;
		this.anh = anh;
	}

	public String getMadth() {
		return Madth;
	}
	public void setMadth(String Madth) {
		this.Madth = Madth;
	}
	public String gettendth() {
		return tendth;
	}
	public void settendth(String tendth) {
		this.tendth = tendth;
	}
	public String getSoLuongMua() {
		return SoLuongMua;
	}
	public void setSoLuongMua(String soLuongMua) {
		SoLuongMua = soLuongMua;
	}
	public java.util.Date getNgayMua() {
		return NgayMua;
	}
	public void setNgayMua(java.util.Date ngayMua) {
		NgayMua = ngayMua;
	}
	public long getGia() {
		return gia;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	public boolean istinhtrang() {
		return tinhtrang;
	}
	public void settinhtrang(boolean tinhtrang) {
		this.tinhtrang = tinhtrang;
	}
	public long getThanhtien() {
		return thanhtien;
	}
	public void setThanhtien(long thanhtien) {
		this.thanhtien = thanhtien;
	}
	public long getMakh() {
		return makh;
	}
	public void setMakh(long makh) {
		this.makh = makh;
	}

	public String getAnh() {
		return anh;
	}

	public void setAnh(String anh) {
		this.anh = anh;
	}
	
	
	
	
	
}
