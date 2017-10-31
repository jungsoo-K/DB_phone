package spring.sts.phone;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import www.DBphone.product.ProductDAO;
import www.DBphone.product.ProductDTO;
import www.DBphone.utility.Utility;

@Controller
public class ProductContoller {
   
   

   @Autowired
   private ProductDAO dao;
   
   @RequestMapping(value = "/product/delete", method = RequestMethod.GET)
   public String delete(String pcode, HttpSession session, Model model) {
      if (pcode == null)
         pcode = (String) session.getAttribute("pcode");

      model.addAttribute("pcode", pcode);

      return "/product/delete";

   }

   @RequestMapping(value = "/product/delete", method = RequestMethod.POST)
   public String delete(String pcode, String oldfile, Model model, HttpServletRequest request) throws Exception {
      boolean flag = dao.delete(pcode);
      if (flag && !request.getSession().getAttribute("pcode").equals("admin"))
         request.getSession().invalidate();

      request.setAttribute("flag", flag);
      return "/product/deleteProc";
   }
   
    @RequestMapping(value="/product/update", method=RequestMethod.POST)
      public String update(ProductDTO dto, Model model, String col, String word, String nowPage) {
         Map map = new HashMap();
         map.put("pcode", dto.getPcode());
         boolean flag = false;
         if(flag) {
            model.addAttribute("col", col);
            model.addAttribute("word", word);
            model.addAttribute("nowPage", nowPage);
            return "redirect:list";
         }else {
            return "error/error";
         }
      }
    
      @RequestMapping(value="/product/update", method=RequestMethod.GET)
      public String update(String pcode, Model model) throws Exception {
         model.addAttribute("dto", dao.read(pcode));
         
         return "/product/update";
      }
   
   

   @RequestMapping("/product/read")
   public String read(String pcode, Model model, HttpServletRequest request, int nowPage, String col, String word) throws Exception {
      ProductDTO dto = (ProductDTO) dao.read(pcode);
      dto.setPimpor(dto.getPimpor().replaceAll("\r\n", "<br>"));
      model.addAttribute("vo", dto);

      /* 댓글관련 시작 */
      String url = "read";
      int nPage = 1;

      if (request.getParameter("nPage") != null)
         nPage = Integer.parseInt(request.getParameter("nPage"));

      int recordPerPage = 3;

      int sno = ((nPage - 1) * recordPerPage) + 1;
      int eno = nPage * recordPerPage;

      Map map = new HashMap();
      map.put("sno", sno);
      map.put("eno", eno);
      map.put("pcode", pcode);


      model.addAttribute("nPage", nPage);

      return "/product/read";
   }

   @RequestMapping(value = "/product/create", method = RequestMethod.POST)
   public String create(ProductDTO DTO) throws Exception {
      boolean flag = dao.create(DTO);
      if (flag) {
         return "redirect:list";
      } else {
         return "error/error";
      }
   }

   @RequestMapping(value = "/product/create", method = RequestMethod.GET)
   public String create() {

      return "/product/create";
   }

   @RequestMapping("/product/list")
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
      List<ProductDTO> list = dao.list(map);
      String paging = Utility.paging2("list", total, nowPage, recordPerPage, col, word);

      request.setAttribute("list", list);
      request.setAttribute("col", col);
      request.setAttribute("word", word);
      request.setAttribute("nowPage", nowPage);
      request.setAttribute("paging", paging);
      return "/product/list";
   }
	@RequestMapping("/mypage/orderinformation")
	public String orderinformation(HttpServletRequest request) {
	
		
		
		return "/mypage/orderinformation";
	}
}