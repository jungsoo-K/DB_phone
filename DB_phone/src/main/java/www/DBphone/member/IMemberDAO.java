package www.DBphone.member;

import java.util.Map;

import www.DAOInter;

public interface IMemberDAO extends DAOInter {
	int total(Map map);

	boolean idCheck(String id);

	boolean emailCheck(String email);

	boolean loginCheck(Map map);

	String getGrade(String id);

	

	boolean updatepasswd(Map map);
}
