package bean;

public class khachhangbean {
	private long makh;
	private String hoten;
	private String email;
	private String diachi;
	private String Sdt;
	private String username;
	private String password;
	public khachhangbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public khachhangbean(long makh, String hoten, String email, String diachi, String sdt, String username, String password) {
		super();
		this.makh = makh;
		this.hoten = hoten;
		this.email = email;
		this.diachi = diachi;
		Sdt = sdt;
		this.username = username;
		this.password = password;
	}
	
	public long getMakh() {
		return makh;
	}
	public void setMakh(long makh) {
		this.makh = makh;
	}
	public String getHoten() {
		return hoten;
	}
	public void setHoten(String hoten) {
		this.hoten = hoten;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDiachi() {
		return diachi;
	}
	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}
	public String getSdt() {
		return Sdt;
	}
	public void setSdt(String sdt) {
		Sdt = sdt;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
