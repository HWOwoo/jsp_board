package edu.hi.ex.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.hi.ex.dao.BDao;

public class BWriteCommand implements BCommand{

	//자손이 구현하므로 interface의 메소드를 override한다
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String bname = request.getParameter("bname");
		String btitle = request.getParameter("btitle");
		String bcontent = request.getParameter("bcontent");
		
		BDao dao = new BDao();
		dao.write(bname, btitle, bcontent);
		
	}
	
}
