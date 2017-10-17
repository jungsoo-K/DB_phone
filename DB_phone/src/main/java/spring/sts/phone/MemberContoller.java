package spring.sts.phone;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import www.DBphone.member.IMemberDAO;
import www.DBphone.member.MemberDAO;
import www.DBphone.member.MemberDTO;
import www.DBphone.utility.Utility;

@Controller
public class MemberContoller {

	@Autowired
	private IMemberDAO dao;

	@RequestMapping("/member/id_form")
	public String idCheck() {
		return "/member/id_form";
	}

	@RequestMapping("/member/id_proc")
	public String idCheck(String id, Model model) {
		model.addAttribute("flag", dao.idCheck(id));
		return "/member/id_proc";
	}


	@RequestMapping("/member/email_proc")
	public String emailCheck(String email, Model model) {
		model.addAttribute("flag", dao.emailCheck(email));
		return "/member/email_proc";
	}

	@RequestMapping("/member/create")
	public String create() {
		
		return "/member/create";
	}

	@RequestMapping("/member/createProc")
	public String create(MemberDTO dto, Model model) throws Exception {

		String str = "";

		if (dao.idCheck(dto.getId())) {
			str = "중복된 ID입니다. ID중복을 하세요";
			model.addAttribute("str", str);
		}
		if (dao.emailCheck(dto.getEmail())) {
			str = "중복된 EMAIL입니다. EMAIL중복을 하세요";
			model.addAttribute("str", str);
		}

		boolean flag = dao.create(dto);
		model.addAttribute("flag", flag);

		return "/member/createProc";
	}

	@RequestMapping("/member/read")
	public String read(String id, HttpSession session, Model model) throws Exception {
		if (id == null)
			id = (String) session.getAttribute("id");
		MemberDTO dto = (MemberDTO) dao.read(id);
		model.addAttribute("dto", dto);
		return "/member/read";
	}

	@RequestMapping(value = "/member/update", method = RequestMethod.GET)
	public String update(String id, HttpSession session, Model model) throws Exception {
		if (id == null)
			id = (String) session.getAttribute("id");
		MemberDTO dto = (MemberDTO) dao.read(id);
		model.addAttribute("dto", dto);
		return "/member/update";

	}

	@RequestMapping(value = "/member/update", method = RequestMethod.POST)
	public String update(MemberDTO dto, Model model) throws Exception {
		boolean flag = dao.update(dto);
		model.addAttribute("flag", flag);
		return "/member/updateProc";
	}

	@RequestMapping(value = "/member/delete", method = RequestMethod.GET)
	public String delete(String id, HttpSession session, Model model) {
		if (id == null)
			id = (String) session.getAttribute("id");

		model.addAttribute("id", id);

		return "/member/delete";

	}

	@RequestMapping(value = "/member/delete", method = RequestMethod.POST)
	public String delete(String id, String oldfile, Model model, HttpServletRequest request) throws Exception {
		boolean flag = dao.delete(id);
		if (flag && !request.getSession().getAttribute("id").equals("admin"))
			request.getSession().invalidate();

		request.setAttribute("flag", flag);
		return "/member/deleteProc";
	}

	@RequestMapping(value = "/member/updatePasswd", method = RequestMethod.POST)
	public String updatePw(HttpServletRequest request, String id, String passwd) {
		Map map = new HashMap();
		map.put("id", id);
		map.put("passwd", passwd);

		boolean flag = dao.updatepasswd(map);

		request.setAttribute("flag", flag);
		return "/member/updatePasswdProc";
	}

	@RequestMapping(value = "/member/updatePasswd", method = RequestMethod.GET)
	public String updatePw() {

		return "/member/updatePasswd";
	}

	@RequestMapping("/admin/list")
	public String list(HttpServletRequest request) throws Exception {
		String col = Utility.checkNull(request.getParameter("col"));
		String word = Utility.checkNull(request.getParameter("word"));
		if (col.equals("total"))
			word = "";

		int nowPage = 1;
		int recordPerPage = 3;
		if (request.getParameter("nowPage") != null)
			nowPage = Integer.parseInt(request.getParameter("nowPage"));

		int sno = ((nowPage - 1) * recordPerPage);
		int eno = recordPerPage;
		Map map = new HashMap();
		map.put("col", col);
		map.put("word", word);
		map.put("sno", sno);
		map.put("eno", eno);

		int total = dao.total(map);
		List<MemberDTO> list = dao.list(map);
		String paging = Utility.paging2("list", total, nowPage, recordPerPage, col, word);

		request.setAttribute("list", list);
		request.setAttribute("col", col);
		request.setAttribute("word", word);
		request.setAttribute("nowPage", nowPage);
		request.setAttribute("paging", paging);
		return "/member/list";
	}

	@RequestMapping(value = "/member/login", method = RequestMethod.GET)
	public String login(HttpServletRequest request) {

		return "/member/login";

	}

	@RequestMapping(value = "/member/login", method = RequestMethod.POST)
	public String login(Model model, HttpServletRequest request, String nowPage, String col, String word) {

		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");

		Map map = new HashMap();
		map.put("id", id);
		map.put("passwd", passwd);

		boolean flag = dao.loginCheck(map);
		request.setAttribute("flag", flag);

		if (flag) {
			String grade = dao.getGrade(id);

			request.getSession().setAttribute("id", id);
			request.getSession().setAttribute("grade", grade);

		} else {
			return "./error/passwdError";
		}

		model.addAttribute("id", id);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("col", col);
		model.addAttribute("word", word);

		return "/member/loginProc";

	}

	@RequestMapping("/member/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

}