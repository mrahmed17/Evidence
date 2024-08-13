
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Student;
import util.DbUtil;

public class StudentDao {
    
    static PreparedStatement ps;
    static ResultSet rs;
    static String sql = "";
    
     public static int saveStudent(Student s) {
        int status = 0;
        sql = "insert into studnets (name, email, gender, subject) values(?,?,?,?)";

        try {
            ps = DbUtil.getCon().prepareStatement(sql);

            ps.setString(1, s.getName());
            ps.setString(2, s.getEmail());
            ps.setString(3, s.getGender());
            ps.setString(4, s.getSubject());

            status = ps.executeUpdate();

            ps.close();
            DbUtil.getCon().close();

        } catch (SQLException ex) {
            Logger.getLogger(StudentDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return status;
    }

    public static List<Student> viewAllStudent() {
        List<Student> stList = new ArrayList<>();

        sql = "select * from students";

        try {
            ps = DbUtil.getCon().prepareStatement(sql);

            rs = ps.executeQuery();

            while (rs.next()) {
                Student s = new Student(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("email"),
                        rs.getString("gender"),
                        rs.getString("subject")
                );
                stList.add(s);

            }

            rs.close();

            ps.close();
            DbUtil.getCon().close();

        } catch (SQLException ex) {
            Logger.getLogger(StudentDao.class.getName()).log(Level.SEVERE, null, ex);
        }

        return stList;
    }

    public static void updateStudent(Student s) {
        sql = "update students set name=?, email=?, gender=?, subject=? where id=?";

        try {
            ps = DbUtil.getCon().prepareStatement(sql);

            ps.setString(1, s.getName());
            ps.setString(2, s.getEmail());
            ps.setString(3, s.getGender());
            ps.setString(4, s.getSubject());
            ps.setInt(5, s.getId());

            ps.executeUpdate();

            ps.close();
            DbUtil.getCon().close();

        } catch (SQLException ex) {
            Logger.getLogger(StudentDao.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public static Student getById(int id) {
        Student s = null;

        sql = "select * from students where id=?";

        try {
            ps = DbUtil.getCon().prepareStatement(sql);

            ps.setInt(1, id);
            rs = ps.executeQuery();

            while (rs.next()) {
                s = new Student(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("email"),
                        rs.getString("gender"),
                        rs.getString("subject")
                );

                rs.close();

                ps.close();
                DbUtil.getCon().close();
            }

        } catch (SQLException ex) {
            Logger.getLogger(StudentDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return s;
    }

    public static void deleteStudent(Student s) {
        sql = "delete from students where id=?";

        try {
            ps = DbUtil.getCon().prepareStatement(sql);

            ps.setInt(1, s.getId());

            ps.close();
            DbUtil.getCon().close();

        } catch (SQLException ex) {
            Logger.getLogger(StudentDao.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    
}
