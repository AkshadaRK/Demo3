package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.Employee;

public class EmpDao {


	
		public static Connection getConnection()
		{
			Connection con=null;
			try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.print("erty");
			con=DriverManager.getConnection("jdbc:MySql://192.168.100.26:3306/group036","group036","welcome");
			System.out.println("hjkj");
			}catch(Exception e)
			{
				e.printStackTrace();
			}
			return con;
		}
		
		public static void insertall()
		{
			
			
		}
		public static Employee getDetailByID(int id)
		{
			
			Employee e=new Employee();  
	          
	        try{  
	            Connection con=getConnection();  
	            PreparedStatement ps=con.prepareStatement("select * from group036.student where id=?");  
	            ps.setInt(1,id);  
	            ResultSet rs=ps.executeQuery();  
	            if(rs.next()){  
	                e.setId(rs.getInt(1));  
	                e.setFname(rs.getString(2)); 
	                e.setLname(rs.getString(3));
	                e.setDob(rs.getDate(4));  
	                e.setEmail(rs.getString(5));  
	                 
	            }  
	            con.close();  
	        }catch(Exception ex){ex.printStackTrace();}  
	          
	        return e;  
		}
		
		public static List<Employee> getAllDetails(int id)
		{
			List<Employee> emp=new ArrayList<Employee>();
			try {
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("select * from student s,student_qualification sq where s.id=sq.studentID and s.id=? ");
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				Employee e=new Employee();
				e.setId(rs.getInt(1));
				e.setFname(rs.getString(2));
				e.setCollege(rs.getString(3));
				e.setMarks(rs.getInt(5));
				e.setUniversity(rs.getString(4));
				emp.add(e);
				
				
			}
			
			}catch(Exception e)
			{
				e.printStackTrace();
			}
			
			return emp;
		}
		

	}


