package com.briup.run.web.servlet;
import java.sql.*;
public class DB {
	  	Connection dbconn;
	    Statement stmt;
	    ResultSet rs;
	    
	    public DB(){
	        stmt=null;
	        rs=null;
	         try{
	          Class.forName("com.mysql.jdbc.Driver");
	          dbconn=DriverManager.getConnection("jdbc:mysql://localhost:3306/friends","root","");
	        }
	        catch(Exception e){
	            dbconn=null;          
	        }       
	        
	    }
	    public boolean exesql(String sql){
	        try{
	            stmt=dbconn.createStatement();
	            stmt.executeUpdate(sql);
	            return true;
	            
	        }catch(Exception e){
	            System.out.println(e.getMessage());
	            return false;
	        }                             
	    }
	    public ResultSet exequery(String sql){
	        try{
	            stmt=dbconn.createStatement();
	            rs=stmt.executeQuery(sql);
	            
	            
	        }catch(Exception e){
	            System.out.println(e.getMessage());
	            rs=null;
	        }                
	        return rs;
	    }

}
