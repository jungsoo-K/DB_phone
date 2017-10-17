package www.DBphone.member;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO implements IMemberDAO {
	@Autowired
	private SqlSessionTemplate mybatis;

	public void setMybatis(SqlSessionTemplate mybatis) {
		this.mybatis = mybatis;
	}

	@Override
	public boolean create(Object dto) throws Exception {
		boolean flag = false;
		int cnt = mybatis.insert("member.create", dto);
		if (cnt > 0)
			flag = true;

		return flag;
	}

	@Override
	public List list(Map map) throws Exception {
		return mybatis.selectList("member.list", map);
	}

	@Override
	public Object read(Object id) throws Exception {

		return mybatis.selectOne("member.read", id);
	}

	@Override
	public boolean update(Object dto) throws Exception {
		boolean flag = false;
		int cnt = mybatis.update("member.update", dto);
		if (cnt > 0)
			flag = true;

		return flag;
	}

	@Override
	public boolean updatepasswd(Map map) {
		boolean flag = false;
		int cnt = mybatis.update("member.updatepasswd", map);
		if (cnt > 0)
			flag = true;

		return flag;
	}

	@Override
	public boolean delete(Object id) throws Exception {
		boolean flag = false;
		int cnt = mybatis.delete("member.delete", id);
		if (cnt > 0)
			flag = true;
		return flag;
	}

	@Override
	public int total(Map map) {

		return mybatis.selectOne("member.total", map);
	}

	@Override
	public boolean idCheck(String id) {
		boolean flag = false;
		int cnt = mybatis.selectOne("member.idCheck", id);
		if (cnt > 0)
			flag = true;
		return flag;
	}

	@Override
	public boolean emailCheck(String email) {
		boolean flag = false;
	
		int cnt = mybatis.selectOne("member.emailCheck", email);
		
		if (cnt > 0)
			flag = true;
		return flag;
	}

	@Override
	public boolean loginCheck(Map map) {
		boolean flag = false;
		int cnt = mybatis.selectOne("member.loginCheck", map);
		if (cnt > 0)
			flag = true;

		return flag;
	}

	@Override
	public String getGrade(String id) {

		return mybatis.selectOne("member.getGrade", id);
	}



}
