package spring.sts.phone;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import www.DBphone.notice.NoticeDAO;
import www.DBphone.notice.NoticeDTO;
import www.DBphone.utility.Utility;

@Controller
public class NoticeContoller {
	@Autowired
	private NoticeDAO dao;
	
	@RequestMapping("/notice/list")
	public String list(HttpServletRequest request) {
		String col = Utility.checkNull(request.getParameter("col"));
		String word = Utility.checkNull(request.getParameter("word"));

		if (col.equals("total"))
			word = "";

		int nowPage = 1; 
		if (request.getParameter("nowPage") != null)
			nowPage = Integer.parseInt(request.getParameter("nowPage"));
		
		int recordPerPage = 5;

		int sno = ((nowPage - 1) * recordPerPage);
		int eno = recordPerPage;
		
		Map map = new HashMap();
		map.put("col", col);
		map.put("word", word);
		map.put("sno", sno);
		map.put("eno", eno);
		
		List<NoticeDTO> list = dao.list(map);
		int totalRecord = dao.total(map);
		String paging = Utility.paging2("list", totalRecord, nowPage, recordPerPage, col, word);
		
		request.setAttribute("list", list);
		request.setAttribute("paging", paging);
		request.setAttribute("col", col);
		request.setAttribute("word", word);
		request.setAttribute("nowPage", nowPage);
		
		return "/notice/list";
	}
	
}
