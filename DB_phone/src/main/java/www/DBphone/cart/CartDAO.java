package www.DBphone.cart;

import java.util.List;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import www.DAOInter;


@Repository
public class CartDAO implements DAOInter {
	
	@Autowired
	private SqlSessionTemplate mybatis;

	public void setMybatis(SqlSessionTemplate mybatis) {
		this.mybatis = mybatis;
	}

	@Override
	public boolean create(Object dto) throws Exception {
		boolean flag = false;
		int cnt = mybatis.insert("cart.create", dto);
		if(cnt>0)flag=true;
		return flag;
	
	}

	@Override
	public List list(Map map) throws Exception {
		// TODO Auto-generated method stub
		return mybatis.selectList("cart.list", map);
	}

	@Override
	public Object read(Object cartnum) throws Exception {
		
		return mybatis.selectOne("cart.read",cartnum);
	}

	@Override
	public boolean update(Object dto) throws Exception {
		boolean flag = false;
		int cnt = mybatis.update("cart.update", dto);
		if(cnt>0)flag=true;
		return flag;
	}

	@Override
	public boolean delete(Object cartnum) throws Exception {
		boolean flag = false;
		int cnt = mybatis.delete("cart.delete", cartnum);
		if(cnt>0)flag=true;
		return flag;
	}

}
