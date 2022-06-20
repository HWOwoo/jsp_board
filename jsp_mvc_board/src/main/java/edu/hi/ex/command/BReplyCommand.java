package edu.hi.ex.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.hi.ex.dao.BDao;

public class BReplyCommand implements BCommand{


	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		System.out.println("BReplyCommand entry"); // -> 디버깅문구
		
		String bid = request.getParameter("bid");
		String bname = request.getParameter("bname");
		String btitle = request.getParameter("btitle");
		String bcontent = request.getParameter("bcontent");
		String bgroup = request.getParameter("bgroup");
		String bstep = request.getParameter("bstep");
		String bindent = request.getParameter("bindent");

		BDao dao = new BDao();
		dao.reply(bid, bname, btitle, bcontent, bgroup, bstep, bindent);

		request.setAttribute("reply_view", dao);
		
	}
	
}
