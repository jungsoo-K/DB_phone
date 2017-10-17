package www.DBphone.notice;

import java.util.Map;

import www.DAOInter;

public interface INoticeDAO extends DAOInter {
	int total(Map map) throws Exception;
	void upViewcnt(int no_num);
}
