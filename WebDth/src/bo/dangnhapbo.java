package bo;

import bean.khachhangbean;
import dao.dangnhapdao;

public class dangnhapbo {

	dangnhapdao khdao = new dangnhapdao();
	public khachhangbean ktdn(String tendn, String pass)
			throws Exception{
		return khdao.ktdn(tendn, pass);
	}
}
