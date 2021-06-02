package bjpowernode.controller;

import bjpowernode.entity.Student;
import bjpowernode.service.StudentService;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class addStudentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从请求包中获取参数
        request.setCharacterEncoding("utf-8");
        String id,name,email,age;
        id = request.getParameter("sid");
        name = request.getParameter("sname");
        email = request.getParameter("email");
        age = request.getParameter("age");
        Student stu = new Student(Integer.parseInt(id),name,email,Integer.valueOf(age));
        // 获取容器对象
        ServletContext sc = getServletContext();
        ApplicationContext ac = WebApplicationContextUtils.getRequiredWebApplicationContext(sc);
        // 从容器中获取service代理对象
        StudentService service = (StudentService) ac.getBean("studentService");
        service.addStudent(stu);
        // 请求转发
        request.getRequestDispatcher("/res.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
