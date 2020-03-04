<%-- 
    Document   : addadmin
    Created on : 20 Sep, 2019, 8:35:40 AM
    Author     : sandi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="college.student" %>
<%@include file="connection.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <body bgcolor="cyan">
        <%
                 String roll=request.getParameter("roll");
                 String dname=request.getParameter("dname");
                  String sname=request.getParameter("sname");
            String suname=request.getParameter("suname");
            String spw=request.getParameter("spw");
            student c=new student();
            c.setroll(roll);
            c.setdid(dname);
            c.setsuname(suname);
            c.setspw(spw);
            c.setsname(sname);
            
            try{
                String query="insert into student(did,sname,suname,spw) values('"+c.getdid()+"','"+c.getsname()+"','"+c.getsuname()+"','"+c.getspw()+"')";
                st.executeUpdate(query);
                
            }
            catch(Exception e){
                out.println(e);
            }
         
            %>
                        <h4><center>Successfully Registered</h4>
            <br><center><a href="home.html" >Back To Home Page</a><br><br>
    </body>
</html>
