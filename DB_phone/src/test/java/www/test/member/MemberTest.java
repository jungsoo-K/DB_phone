package www.test.member;

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

import www.DBphone.member.MemberDAO;
import www.DBphone.member.MemberDTO;

public class MemberTest {

	private static BeanFactory beans;
	private static MemberDAO dao;

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
		dao = (MemberDAO) beans.getBean("memdao");
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	@Ignore
	public void testCreate() throws Exception {
		MemberDTO dto = new MemberDTO();
		dto.setId("delste");
		dto.setMname("김ㅊ동섭");
		dto.setPhone("001-1111-1111");
		dto.setEmail("deds@gmail.com");
		dto.setZipcode("14345");
		dto.setAddress1("인인천");
		dto.setAddress2("산곡산동");
		dto.setPasswd("12345");

		assertTrue(dao.create(dto));
	}

	@Test
	@Ignore
	public void testList() throws Exception {
		Map map = new HashMap();
		map.put("col", "");
		map.put("word", "");
		map.put("sno", 1);
		map.put("eno", 3);

		List<MemberDTO> list = dao.list(map);
		assertEquals(list.size(), 1);
	}

	@Test
	@Ignore
	public void testRead() throws Exception {
		// fail("Not yet implemented");
		MemberDTO dto = (MemberDTO) dao.read("delete");
		assertNotNull(dto);
	}

	@Test
	@Ignore
	public void testUpdate() throws Exception {
		MemberDTO dto = (MemberDTO) dao.read("delete");
		dto.setPhone("222-2222-2222");
		dto.setEmail("sdf@gmai.com");
		dto.setZipcode("12354");
		dto.setAddress1("서울");
		dto.setAddress2("관철동");

		assertTrue(dao.update(dto));

	}

	@Test
	@Ignore
	public void testUpdatepasswd() throws Exception {
		MemberDTO dto = (MemberDTO) dao.read("delete");

		dto.setPasswd("12345");
		assertTrue(dao.update(dto));

		// fail("Not yet implemented");
	}

	@Test
	@Ignore
	public void testDelete() throws Exception {
		String id = "delete";
		assertTrue(dao.delete("delete"));
		// fail("Not yet implemented");
	}

	@Test 
	public void testTotal() {
		Map map = new HashMap();
		map.put("col", "");
		map.put("word", "");
        int cnt = dao.total(map);
		assertEquals(cnt, 1);
	}

	// @Test
	// public void testIdCheck() {
	// // fail("Not yet implemented");
	// }
	//
	// @Test
	// public void testEamilCheck() {
	// // fail("Not yet implemented");
	// }
	//
	// @Test
	// public void testLoginCheck() {
	// // fail("Not yet implemented");
	// }
	//
	// @Test
	// public void testGetGrade() {
	// // fail("Not yet implemented");
	// }

}
