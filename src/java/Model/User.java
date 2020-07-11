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
public class User {

    String account, password, name;
    private boolean gender;
    private String address;
    private Date dob;

    private Connection con;
    private Statement stm;
    private ResultSet rs;

    public Connection getCon() {
        return con;
    }

    public User(String account, String password, String name, boolean gender, String address, Date dob) {
        this.account = account;
        this.password = password;
        this.name = name;
        this.gender = gender;
        this.address = address;
        this.dob = dob;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
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
   
    public User() {
    }

    public User(String account, String password) {
        this.account = account;
        this.password = password;

        try {
            con = (new DBContext().getConnection());
            System.out.println("Connect Successfully");
            stm = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
        } catch (Exception e) {
            System.out.println("Connect fail: " + e.getMessage());
        }
    }

    public String getAccountString() {
        return account;
    }

    public void setAccountString(String accountString) {
        this.account = accountString;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean checkLogin() {
//        if("admin".equals(account) && "123".equals(password)){
//            return true;
//        } else {
//            return false;
//        }

        // check xem account co ton tia trong tblUser hay khong?
        // Nguoc lai return false
        try {
            
            String strSelect = "select * from tblUser where account = '" + account + "' and pass = '" + password + "'";
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("Fail: " + e.getMessage());
        }
        return false;
    }

    public boolean checkLogin1() {
//        if("admin".equals(account) && "123".equals(password)){
//            return true;
//        } else {
//            return false;
//        }

        // check xem account co ton tia trong tblUser hay khong?
        // Nguoc lai return false
        try {
            
            String strSelect = "select * from tblUser where account = '" + account + "'";
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("Fail: " + e.getMessage());
        }
        return false;
    }

    public boolean checkLogin2() {
//        if("admin".equals(account) && "123".equals(password)){
//            return true;
//        } else {
//            return false;
//        }

        // check xem account co ton tia trong tblUser hay khong?
        // Nguoc lai return false
        try {
            
            String strSelect = "select * from tblUser where pass = '" + password + "'";
            rs = stm.executeQuery(strSelect);
            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("Fail: " + e.getMessage());
        }
        return false;
    }

    public ArrayList<User> getListUser() {
        ArrayList<User> list = new ArrayList<>();
//        list.add(new User("phukill", "thisismypassword"));
//        list.add(new User("phongbuong", "ngungoc"));
//        list.add(new User("phuongthanh", "hihi"));
//        list.add(new User("ducbo", "mygod"));
//        list.add(new User("thanhtam", "tiktok"));
        
        // get danh sach User từ database
        try {
            rs=stm.executeQuery("Select * from tblUser");
            while(rs.next()){
                String account = rs.getString(1);
                String password = rs.getString(2);
                String name = rs.getString(3);
                boolean gender = rs.getBoolean(4);
                String address = rs.getString(5);
                Date dob = rs.getDate(6);
                list.add(new User(account, password, name, gender, address, dob));
            }
        } catch (Exception e) {
            System.out.println("Lỗi get User: "+e.getMessage());
        }
        return list;
    }
}

