package www.DBphone.notice;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class NoticeDAO implements INoticeDAO{
	@Autowired
	private SqlSessionTemplate mybatis;

	public void setMybatis(SqlSessionTemplate mybatis) {
		this.mybatis = mybatis;
	}
	
	@Override
	public List<NoticeDTO> list(Map map) {
		return mybatis.selectList("notice.list", map);
	}
	
	@Override
	public void upViewcnt(int no_num){
		mybatis.update("notice.upViewcnt", no_num);
	}
	
	@Override
	public int total(Map map){
		return mybatis.selectOne("notice.total", map);
	}

	@Override
	public boolean create(Object dto) throws Exception {
		boolean flag = false;
		int cnt = mybatis.insert("notice.create", dto);
		if(cnt > 0 ) flag = true;
		return flag;
	}

	@Override
	public Object read(Object no_num) throws Exception {
		return mybatis.selectOne("notice.read", no_num);
	}

	@Override
	public boolean update(Object dto) throws Exception {
		boolean flag = false;
		int cnt = mybatis.update("notice.update", dto);
		if(cnt > 0) flag = true;
		return flag;
	}

	@Override
	public boolean delete(Object no_num) throws Exception {
		boolean flag = false;
		int cnt = mybatis.delete("notice.delete", no_num);
		if(cnt > 0) flag = true;
		return flag;
	}
}
