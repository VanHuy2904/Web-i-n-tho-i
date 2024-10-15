package bo;

import dao.khachhangdao;

public class khachhangbo {
khachhangdao khdao = new khachhangdao();
public int themkh(String hoten, String email, String diachi, String sdt, String username, String password) 
		throws Exception{
	return khdao.themkh(hoten, email, diachi, sdt, username, password);
}
}
