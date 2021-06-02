package com.bjpowernode.dao;

import com.bjpowernode.entity.StuClass;

import javax.servlet.http.HttpServletRequest;
import java.sql.SQLException;
import java.util.List;

public interface T_StuClassDao {
    public List<StuClass> queryClass(HttpServletRequest request) throws SQLException;
}
