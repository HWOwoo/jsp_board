package edu.hi.ex.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.hi.ex.dao.BDao;

public class BDeleteCommand implements BCommand{

	//자손이 구현하므로 interface의 메소드를 override한다
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("BDeleteCommand entry"); // -> 디버깅 문구
		
		String bid = request.getParameter("bid");

		BDao dao = new BDao();
		dao.delete(bid);
		
	}
	
}
