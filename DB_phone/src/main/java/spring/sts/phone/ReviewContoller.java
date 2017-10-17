package spring.sts.phone;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import www.DBphone.review.ReviewDAO;
import www.DBphone.review.ReviewDTO;
import www.DBphone.utility.Utility;

@Controller
public class ReviewContoller {

	@Autowired
	private ReviewDAO dao;
	
	@RequestMapping(value="/create",method=RequestMethod.GET)
	public String create() {
		
		return "/review/create";
	}
	
	@RequestMapping(value="/create", method=RequestMethod.POST)
	public String create(ReviewDTO dto, HttpServletRequest request) throws Exception {
		String upDir = request.getRealPath("/storage");
		
		int filesize = (int) dto.getFilenameMF().getSize();
		String filename = null;
		if(filesize>0){
			filename = Utility.saveFileSpring30(dto.getFilenameMF(), upDir);
		}
		dto.setFilename(filename);
		dto.setFilesize(filesize);
		
		boolean flag = dao.create(dto);
		if(flag) {
			return "redirect:list";
		}else {
		return "error";
		}
	
	}
	
	@RequestMapping(value="/update", method=RequestMethod.GET)
	public String update(int recode, Model model) throws Exception {
		ReviewDTO dto = (ReviewDTO) dao.read(recode);
		model.addAttribute("dto", dto);
		
		return "/review/update";
	}
	
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String update(ReviewDTO dto, Model model, HttpServletRequest request) throws Exception {
		String upDir = request.getRealPath("/storage");
		int filesize = (int) dto.getFilenameMF().getSize();
		String filename = null;
		
		if(filesize>0) {
			filename = Utility.saveFileSpring30(dto.getFilenameMF(), upDir);
		}
		dto.setFilesize(filesize);
		dto.setFilename(filename);
		
		Map map = new HashMap();
		map.put("recode", dto.getRecode());
		map.put("rtitle", dto.getRtitle());
		map.put("rcontent", dto.getRcontent());
		map.put("password", dto.getPassword());
		
		boolean pflag = dao.passwdCheck(map);//비번체크
		boolean flag = false;				//업데이트 성공
		if(pflag) {
			flag = dao.update(dto);
		}else {
			
			return "passwdError";
		}
		String oldfile = request.getParameter("oldfile");
		String nowPage = request.getParameter("nowPage");
		
		//업데이트가 성공이면서 새로운 파일을 업로드 했을 경우
		if(flag && filename !=null && !filename.equals("")) {
			Utility.deleteFile(upDir, oldfile);
		}else if(!flag && filename !=null && !filename.equals("")){
			Utility.deleteFile(upDir, oldfile);
		}
		//request에 저장
		model.addAttribute("flag", flag);
		model.addAttribute("pflag", pflag);
		model.addAttribute("nowPage", nowPage);
		
		if(flag) {
			return "redirect:list";
		}else {
			return "error";
		}
		
	}
	
	@RequestMapping(value="/delete", method=RequestMethod.GET)
	public String delete(int recode) {
		
		return "/review/delete";
	}
	
	@RequestMapping(value="/delete", method=RequestMethod.POST)
	public String delete(int recode, String password, String oldfile, HttpServletRequest request) throws Exception {
		String upDir = request.getRealPath("/storage");
		
		Map map = new HashMap();
		map.put("recode", recode);
		map.put("password", password);
		
		boolean pflag = dao.passwdCheck(map);
		boolean flag = false;
		if(pflag) {
			flag = dao.delete(recode);
		}else {
			return "error";
		}
		if(flag) {
			Utility.deleteFile(upDir, oldfile);
		}
		if(flag) {
			return "redirect:list";
		}else {
			return "error";
		}
	}
	
	@RequestMapping("/review/list")
	public String list(HttpServletRequest request, Model model) throws Exception {
		int nowPage = 1;
		int recordPerPage = 5;
		if(request.getParameter("nowPage")!=null) {
			nowPage = Integer.parseInt(request.getParameter("nowPage"));
		}
		int sno = ((nowPage - 1) * recordPerPage);
		int eno = recordPerPage;
		
		Map map = new HashMap();
		map.put("sno", sno);
		map.put("eno", eno);
		
		List<ReviewDTO> list = dao.list(map);
		int totalRecord = dao.total(map);
		
		String paging = Utility.pagingR("list", totalRecord, nowPage, recordPerPage);
		
		 model.addAttribute("list", list);
	     model.addAttribute("Paging", paging);
	      
	      return "/review/list";
	}
	
	public String read(int recode, Model model) throws Exception {
		ReviewDTO dto = (ReviewDTO) dao.read(recode);
		model.addAttribute("dto",dto);
		return "/review/read";
		
	}
}
