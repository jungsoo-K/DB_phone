package www.DBphone.review;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReviewDAO implements IReviewDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	

	public void setMybatis(SqlSessionTemplate mybatis) {
		this.mybatis = mybatis;
	}

	
	
	@Override
	public boolean create(Object dto) throws Exception {
		// TODO Auto-generated method stub
		boolean flag = false;
		int cnt = mybatis.insert("review.revCreate", dto);
		if(cnt>0)flag = true;
		
		return flag;
	}

	@Override
	public List list(Map map) throws Exception {
		// TODO Auto-generated method stub
		return mybatis.selectOne("review.revRead", map);
	}

	@Override
	public Object read(Object recode) throws Exception {
		// TODO Auto-generated method stub
		return mybatis.selectOne("review.revRead", recode);
	}

	@Override
	public boolean update(Object dto) throws Exception {
		// TODO Auto-generated method stub
		boolean flag = false;
		int cnt = mybatis.update("review.revUpdate", dto);
		if(cnt>0)flag = true;
		
		return flag;
	}

	@Override
	public boolean delete(Object recode) throws Exception {
		boolean flag = false;
		int cnt = mybatis.delete("review.revDelete", recode);
		if(cnt>0)flag = true;
		return flag; 
	}

	public boolean passwdCheck(Map map) {
		boolean flag = false;
		int cnt = mybatis.selectOne("review.revPasswordCheck", map);
		if(cnt>0) flag = true;
		return flag;
	}
	
	public int total(Map map) {
		
		return mybatis.selectOne("review.revTotal", map);
	}
	
}
