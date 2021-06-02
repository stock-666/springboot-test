package com.bjpowernode;

import com.bjpowernode.dao.StudentDao;
import com.bjpowernode.entity.Student;
import com.bjpowernode.utils.MybatisUtils;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import java.util.List;

public class Test01 {
    // 查询学生信息
    @Test
    public void testSelectStudent(){
        // 获取SqlSession对象
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        // 获取StudentDao接口的实现类对象
        StudentDao dao = sqlSession.getMapper(StudentDao.class);
        List<Student> students = dao.getStudents();
        for (Student stu:students){
            System.out.println(stu);
        }
        sqlSession.close();
    }
    // 插入学生信息
    @Test
    public void testInsertStudent(){
        // 获取sqlSession对象
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        // 获取StudentDao接口的实现类对象
        StudentDao dao = sqlSession.getMapper(StudentDao.class);
        // 创建要出入的对象
        // Student stu = new Student(1010,"李白","libai@qq.com",550);
        Student stu = new Student(1011,"杜甫","dufu@qq.com",555);
        // 调用实现类对象的插入方法，插入对象
        int num = dao.insertStudents(stu);
        sqlSession.commit();
        sqlSession.close();
        System.out.println("插入条数：" + num);
    }
    // 删除学生信息
    @Test
    public void testDeleteStudentById(){
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        StudentDao dao = sqlSession.getMapper(StudentDao.class);
        int num = dao.deleteStudentsById(1011);
        sqlSession.commit();
        sqlSession.close();
        System.out.println("删除条数：" + num);
    }
    // 修改学生信息，用多参数对象的方式
    @Test
    public void testUpdateStudent(){
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        StudentDao dao = sqlSession.getMapper(StudentDao.class);
        Student stu = new Student();
        stu.setId(1005);
        stu.setName("王五");
        stu.setEmail("wangwu@qq.com");
        stu.setAge(22);
        int num = dao.updateStudent(stu);
        sqlSession.commit();
        sqlSession.close();
        System.out.println("更新学生信息条数：" + num);
    }
}
