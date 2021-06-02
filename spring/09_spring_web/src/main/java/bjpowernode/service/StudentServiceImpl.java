package bjpowernode.service;
import bjpowernode.dao.StudentDao;
import bjpowernode.entity.Student;
import java.util.List;

public class StudentServiceImpl implements StudentService {
    private StudentDao dao;

    public StudentDao getDao() {
        return dao;
    }

    public void setDao(StudentDao dao) {
        this.dao = dao;
    }

    public StudentServiceImpl() {
    }

    public StudentServiceImpl(StudentDao dao) {
        this.dao = dao;
    }

    // 添加学生数据操作
    @Override
    public int addStudent(Student student) {
        int res = dao.insertStudent(student);
        return res;
    }
    // 查询所有学生数据
    @Override
    public List<Student> getAllStudent() {
        List<Student> res = null;
        res = dao.queryStudents();
        return res;
    }
}
