package spring.sts.phone;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import www.DBphone.member.IMemberDAO;


@Controller
public class OrderContoller {
	
	
	@Autowired
	private IMemberDAO dao;


}
