package com.bjpowernode.daoImpl;

import com.bjpowernode.dao.T_StuClassDao;
import com.bjpowernode.entity.StuClass;
import com.bjpowernode.util.JdbcUtil;

import javax.servlet.http.HttpServletRequest;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class T_StuClassDaoImpl implements T_StuClassDao {
    @Override
    public List<StuClass> queryClass(HttpServletRequest request) throws SQLException {
        String sql = "select * from t_class order by cno desc";
        PreparedStatement ps = JdbcUtil.getPreparedStatement(sql,request);
        ResultSet rs = ps.executeQuery();
        List<StuClass> stuClassList = new ArrayList<>();
        while (rs.next()){
            StuClass stuClass = new StuClass();
            stuClass.setCno(rs.getInt("cno"));
            stuClass.setCname(rs.getString("cname"));
            stuClassList.add(stuClass);
        }
        return stuClassList;
    }
}
