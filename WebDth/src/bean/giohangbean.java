package bean;

public class giohangbean {
	private String madth;
	private String tendth;
	private long gia;
	private long soluongmua;
	private long thanhtien;
	private String anh;
	public giohangbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public giohangbean(String madth, String tendth, long gia, long soluongmua, String anh) {
		super();
		this.madth = madth;
		this.tendth = tendth;
		this.gia = gia;
		this.soluongmua = soluongmua;
		this.thanhtien = soluongmua*gia;
		this.anh = anh;
	}
	public String getMadth() {
		return madth;
	}
	public void setMadth(String madth) {
		this.madth = madth;
	}
	public String getTendth() {
		return tendth;
	}
	public void setTenth(String tendth) {
		this.tendth = tendth;
	}
	public long getGia() {
		return gia;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	public long getSoluongmua() {
		return soluongmua;
	}
	public void setSoluongmua(long soluongmua) {
		this.soluongmua = soluongmua;
	}
	public long getThanhtien() {
		return soluongmua*gia;
	}
	public void setThanhtien(long thanhtien) {
		this.thanhtien = thanhtien;
	}
	
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
}


