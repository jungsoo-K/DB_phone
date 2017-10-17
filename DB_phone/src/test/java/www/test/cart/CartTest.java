package www.test.cart;

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

import www.DBphone.cart.CartDAO;
import www.DBphone.cart.CartDTO;

public class CartTest {

	private static BeanFactory beans;
	private static CartDAO dao;

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
		dao = (CartDAO) beans.getBean("cartdao");
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	@Ignore
	public void testCreate() throws Exception {
		CartDTO dto = new CartDTO();

		dto.setCasetype("유광");
		dto.setCcolor("검정");
		dto.setDevtype("후불");
		dto.setId("delste");
		dto.setPcode("A01");
		dto.setQuantity("3");
		dto.setTotalprice("25000");
		dto.setTotalquantity("11");

		assertTrue(dao.create(dto));

	}

	@Test
	public void testList() throws Exception {
		Map map = new HashMap();
		map.put("cartnum", 3);
		map.put("sno", 1);
		map.put("eno", 3);

		List<CartDTO> list = dao.list(map);
		assertEquals(list.size(), 1);
	}

	@Test
	@Ignore
	public void testUpdate() throws Exception {
		CartDTO dto = new CartDTO();
		dto.setCartnum(3);
		dto.setQuantity("6");
		assertTrue(dao.update(dto));
	}

	@Test
	@Ignore
	public void testDelete() throws Exception {
		CartDTO dto = new CartDTO();
		dto.setCartnum(2);
		assertTrue(dao.delete(dto));
	}

}
