package bo;

import java.util.ArrayList;

import bean.lichsubean;
import dao.lichsudao;

public class lsbo {
	lichsudao lsbo = new lichsudao();
	public ArrayList<lichsubean> getlichsu() throws Exception{
		return lsbo.getlichsu();
	}
}
