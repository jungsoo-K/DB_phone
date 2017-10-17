package www.test.notice;

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

import www.DBphone.notice.NoticeDAO;
import www.DBphone.notice.NoticeDTO;

public class NoticeDAOTest {
	private static BeanFactory beans;
	private static NoticeDAO dao;

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
		dao = (NoticeDAO)beans.getBean("nodao");
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test @Ignore
	public void testList() {
		Map map = new HashMap();
		map.put("col", "");
		map.put("word", "");
		map.put("sno", 0);
		map.put("eno", 10);
		
		List<NoticeDTO> list = dao.list(map);
		assertEquals(list.size(), 3);
	}

	@Test @Ignore
	public void testUpViewcnt() {
		
	}

	@Test @Ignore
	public void testTotal() {
		Map map = new HashMap();
		map.put("col", "");
		map.put("word", "");
		
		assertEquals(dao.total(map), 3);
	}

	@Test @Ignore
	public void testCreate() throws Exception {
		NoticeDTO dto = new NoticeDTO();
		dto.setNo_title("제목");
		dto.setNo_content("내용이다넹");
		dto.setNo_name("이름이락우");
		
		assertTrue(dao.create(dto));
	}

	@Test @Ignore
	public void testRead() throws Exception {
		NoticeDTO dto = (NoticeDTO) dao.read(1);
		
		assertNotNull(dto);
	}

	@Test @Ignore
	public void testUpdate() throws Exception {
		NoticeDTO dto = (NoticeDTO) dao.read(1);
		
		dto.setNo_title("제목 수정함요");
		dto.setNo_content("내용도 수정했따");
		dto.setNo_name("바뀐이름이라네");
		
		assertTrue(dao.update(dto));
	}

	@Test @Ignore
	public void testDelete() throws Exception {
		assertTrue(dao.delete(4));
	}

}
