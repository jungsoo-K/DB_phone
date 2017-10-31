package www.DBphone.order;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OrderDAO implements IOrderDAO{
   
   @Autowired
   private SqlSessionTemplate mybatis;

   public void setMybatis(SqlSessionTemplate mybatis) {
      this.mybatis = mybatis;
   }
   
   public boolean create(OrderDTO dto) {
      boolean flag = false;
      int cnt = mybatis.insert("order.ocreate", dto);
      if(cnt > 0 ) flag = true;
      return flag;
   }
   
   public OrderDTO c_oread(int ocode) {
      return mybatis.selectOne("order.p_oread", ocode);
   }
   
   public OrderDTO p_oread(int ocode) {
      return mybatis.selectOne("order.c_oread", ocode);
   }
   
   public boolean update(OrderDTO dto) {
      boolean flag = false;
      int cnt = mybatis.update("order.oupdate", dto);
      if(cnt > 0) flag = true;
      return flag;
   }
   
   public boolean delete(int ocode) {
      boolean flag = false;
      int cnt = mybatis.delete("order.odelete", ocode);
      if(cnt > 0) flag = true;
      return flag;
   }
   
   public List<OrderDTO> p_olist(Map map) {
      return mybatis.selectList("order.p_olist", map);
   }
   public List<OrderDTO> ad_p_olist(Map map ) {
      return mybatis.selectList("order.ad_p_olist", map);
   }
   public List<OrderDTO> c_olist(Map map) {
      return mybatis.selectList("order.c_olist", map);
   }
   public List<OrderDTO> ad_c_olist(Map map) {
      return mybatis.selectList("order.ad_c_olist", map);
   }
   
   
   public int total(Map map, String pcode ){
      return mybatis.selectOne("order.p_ototal", map);
   }
   
   public int total(Map map, int cnum){
      return mybatis.selectOne("order.c_ototal", map);
   }

@Override
public boolean create(Object dto) throws Exception {
   // TODO Auto-generated method stub
   return false;
}

@Override
public List list(Map map) throws Exception {
   // TODO Auto-generated method stub
   return null;
}

@Override
public Object read(Object pk) throws Exception {
   // TODO Auto-generated method stub
   return null;
}

@Override
public boolean update(Object dto) throws Exception {
   // TODO Auto-generated method stub
   return false;
}

@Override
public boolean delete(Object pk) throws Exception {
   // TODO Auto-generated method stubS
   return false;
}

@Override
public Object p_oread(Object pk) throws Exception {
   // TODO Auto-generated method stub
   return null;
}

@Override
public Object c_oread(Object pk) throws Exception {
   // TODO Auto-generated method stub
   return null;
}


}