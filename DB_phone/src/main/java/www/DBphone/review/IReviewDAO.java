package www.DBphone.review;

import java.util.Map;

import www.DAOInter;

public interface IReviewDAO extends DAOInter {
	
	public boolean delete(Object recode) throws Exception;
	
	public boolean passwdCheck(Map map);
	
}
