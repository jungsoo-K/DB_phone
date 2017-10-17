package www.test.review;

import static org.junit.Assert.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

import www.DBphone.review.ReviewDAO;
import www.DBphone.review.ReviewDTO;





public class ReviewTest {

	private static XmlBeanFactory beans;
	private static ReviewDAO dao;
	
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		 Resource resource = new ClassPathResource("META-INF/blog.xml");
	      beans = new XmlBeanFactory(resource);

	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Before
	public void setUp() throws Exception {
		 dao = (ReviewDAO)beans.getBean("rdao");
	}

	@After
	public void tearDown() throws Exception {
	}


	@Test @Ignore
	public void testCreate() throws Exception {
		ReviewDTO dto = new ReviewDTO();
		dto.setRtitle("우앙");
		dto.setRcontent("좋아요");
		dto.setPassword("123");
		dto.setRimage("ima.jpg");
		dto.setRdate("2017-11-11");
		dto.setGrpno(1);
		assertTrue(dao.create(dto));
	}

	@Test @Ignore 
	public void testList() throws Exception {
		Map map = new HashMap();
		map.put("recode", "");
		map.put("sno", "");
		map.put("eno", "");
	
		List<ReviewDTO> list = dao.list(map);
		assertEquals(list.size(),3);
	}

	@Test @Ignore
	public void testRead() {
		try {
			ReviewDTO dto = (ReviewDTO) dao.read(1);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Test @Ignore
	public void testUpdate() {
		try {
			ReviewDTO dto = (ReviewDTO) dao.read(1);
			dto.setRtitle("우앙굳");
			dto.setRcontent("일단 써보셈");
			dto.setPassword("123");
			dto.setRimage("img.jpg");
			dto.setRdate("2017-11-12");
			dto.setGrpno(1);
			assertTrue(dao.create(dto));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Test @Ignore
	public void testDelete() {
	      try {
			assertTrue(dao.delete(1));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
