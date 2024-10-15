package bo;

import dao.hoadondao;

public class hoadonbo {
	hoadondao hddao = new hoadondao();

	public int Them(long makh) throws Exception{
		
		return hddao.Them(makh);
	}
	
	public long getMaxHD() throws Exception{
		return hddao.getMaxHD();
	}

	
}
