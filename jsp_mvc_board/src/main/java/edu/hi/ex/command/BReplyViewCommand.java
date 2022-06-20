package edu.hi.ex.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.hi.ex.dao.BDao;
import edu.hi.ex.dto.BDto;

public class BReplyViewCommand implements BCommand{

	//자손이 구현하므로 interface의 메소드를 override한다
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		//디버깅을 위한 코드
		System.out.println("BReplyViewCommand entry"); 
				
		String bid = request.getParameter("bid");
	
		BDao dao = new BDao();
		BDto dto = dao.reply_view(bid);

		request.setAttribute("reply_view", dto);	
		
	}
	
}
