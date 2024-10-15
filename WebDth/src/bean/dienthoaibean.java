package bean;

public class dienthoaibean {
	private String madth;
	private String tendth;
	private long soluong;
	private String maloai;
	private long gia;
	private String anh;
	private long soluongdaban;
	public dienthoaibean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public dienthoaibean(String madth, String tendth, long soluong, String maloai, long gia, String anh, long soluongdaban) {
		super();
		this.madth = madth;
		this.tendth = tendth;
		this.soluong = soluong;
		this.maloai = maloai;
		this.gia = gia;
		this.anh = anh;
		this.soluongdaban = soluongdaban;
	}
	public long getSoluongdaban() {
		return soluongdaban;
	}
	public void setSoluongdaban(long soluongdaban) {
		this.soluongdaban = soluongdaban;
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
	public void setTendth(String tendth) {
		this.tendth = tendth;
	}
	public long getSoluong() {
		return soluong;
	}
	public void setSoluong(long soluong) {
		this.soluong = soluong;
	}
	public String getMaloai() {
		return maloai;
	}
	public void setMaloai(String maloai) {
		this.maloai = maloai;
	}
	public long getGia() {
		return gia;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	
	
	
}
