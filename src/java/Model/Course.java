/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import javax.swing.JOptionPane;

/**
 *
 * @author Phu Cong
 */
public class Course {

    String courseID, courseName;
    private String courseAddress;
    private Date courseDate;
    private Connection con;
    private Statement stm;
    private ResultSet rs;

    public Connection getCon() {
        return con;
    }

    public Course(String courseID, String courseName, String courseAddress, Date courseDate) {
        this.courseID = courseID;
        this.courseName = courseName;
        this.courseAddress = courseAddress;
        this.courseDate = courseDate;
    }

    public String getCourseID() {
        return courseID;
    }

    public void setCourseID(String courseID) {
        this.courseID = courseID;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getCourseAddress() {
        return courseAddress;
    }

    public void setCourseAddress(String courseAddress) {
        this.courseAddress = courseAddress;
    }

    public Date getCourseDate() {
        return courseDate;
    }

    public void setCourseDate(Date courseDate) {
        this.courseDate = courseDate;
    }

    public void setCon(Connection con) {
        this.con = con;
    }

    public Statement getStm() {
        return stm;
    }

    public void setStm(Statement stm) {
        this.stm = stm;
    }

    public ResultSet getRs() {
        return rs;
    }

    public void setRs(ResultSet rs) {
        this.rs = rs;
    }
   
    public Course() {
    }
    
    public ArrayList<Course> getListCourses() {
        ArrayList<Course> list = new ArrayList<>();
//        list.add(new Course("phukill", "thisismypassword"));
//        list.add(new Course("phongbuong", "ngungoc"));
//        list.add(new Course("phuongthanh", "hihi"));
//        list.add(new Course("ducbo", "mygod"));
//        list.add(new Course("thanhtam", "tiktok"));
        
        // get danh sach Course từ database
        try {
            rs=stm.executeQuery("Select * from tblCourse");
            while(rs.next()){
                String courseID = rs.getString(1);
                String courseName = rs.getString(2);
                String courseAddress = rs.getString(3);
                Date courseDate = rs.getDate(4);
                list.add(new Course(courseID, courseName, courseAddress, courseDate));
            }
        } catch (Exception e) {
            System.out.println("Lỗi get Course: "+e.getMessage());
        }
        return list;
    }
}
