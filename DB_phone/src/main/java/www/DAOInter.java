package www;

import java.util.List;
import java.util.Map;

import www.DBphone.member.MemberDTO;

public interface DAOInter {
	boolean create(Object dto) throws Exception;

	List list(Map map) throws Exception;

	Object read(Object pk) throws Exception;

	boolean update(Object dto) throws Exception;

	boolean delete(Object pk) throws Exception;

}