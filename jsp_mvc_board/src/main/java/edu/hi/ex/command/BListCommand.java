package edu.hi.ex.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.hi.ex.dao.BDao;
import edu.hi.ex.dto.BDto;

public class BListCommand implements BCommand{

	//자손이 구현하므로 interface의 메소드를 override한다
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		//테이블에 있는 모든 데이터를 끌고 온다는 뜻
		BDao dao = new BDao();
		ArrayList<BDto> dtos = dao.list();
		
		//forwarding될때까지 메모리에 살아있음을 반드시 기억해야한다★
		request.setAttribute("list", dtos);
		
	}
	
}
