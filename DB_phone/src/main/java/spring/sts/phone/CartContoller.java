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

import www.DBphone.cart.CartDAO;
import www.DBphone.cart.CartDTO;
import www.DBphone.member.MemberDTO;
import www.DBphone.utility.Utility;

@Controller
public class CartContoller {
	@Autowired
	public CartDAO dao;

	@RequestMapping("/cart/list")
	public String list(HttpServletRequest request) throws Exception {

		int nowPage = 1;
		if (request.getParameter("nowPage") != null) {
			nowPage = Integer.parseInt(request.getParameter("nowPage"));
		}
		int recordPerPage = 3;
		int sno = ((nowPage - 1) * recordPerPage);
		int eno = recordPerPage;

		Map map = new HashMap();
		map.put("sno", sno);
		map.put("eno", eno);

		List<CartDTO> list = dao.list(map);

		request.setAttribute("list", list);
		request.setAttribute("nowPage", nowPage);

		return "cart/list";
	}

	@RequestMapping(value = "/cart/create", method = RequestMethod.GET)
	public String create() {

		return "/cart/create";
	}

	@RequestMapping(value = "/cart/createProc", method = RequestMethod.POST)
	public String create(CartDTO dto, Model model) throws Exception {
		boolean flag = dao.create(dto);
		model.addAttribute("flag", flag);
		if (flag) {
			return "cart/createProc";
		} else {
			return "redirect:list";
		}
	}

	@RequestMapping(value = "/cart/update", method = RequestMethod.GET)
	public String update() throws Exception {

       return "cart/updateForm";
	}

	@RequestMapping(value = "/cart/updateProc", method = RequestMethod.POST)
	public String update(CartDTO dto) throws Exception {

		boolean flag = dao.update(dto);
		if (flag) {

			return "cart/updateProc";
		} else {
			return "redirect:list";
		}

	}

	@RequestMapping(value = "cart/deleteProc", method = RequestMethod.GET)
	public String delete(int cartnum, Model model) throws Exception {
		boolean flag = dao.delete(cartnum);
		model.addAttribute("flag", flag);

		return "cart/deleteProc";

	}


	
}
