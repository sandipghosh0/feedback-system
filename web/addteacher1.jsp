<%-- 
    Document   : addadmin
    Created on : 20 Sep, 2019, 8:35:40 AM
    Author     : sandi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="college.teacher" %>
<%@include file="connection.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
                 String tid=request.getParameter("tid");
                 String dname=request.getParameter("dname");
                  String tname=request.getParameter("tname");
            String tuname=request.getParameter("tuname");
            String tpw=request.getParameter("tpw");
            teacher c=new teacher();
            c.settid(tid);
            c.setdid(dname);
            c.settuname(tuname);
            c.settpw(tpw);
            c.settname(tname);
            
            try{
                String query="insert into teacher(did,tname,tuname,tpw) values('"+c.getdid()+"','"+c.gettname()+"','"+c.gettuname()+"','"+c.gettpw()+"')";
                st.executeUpdate(query);
                out.println("Successfully added");
            }
            catch(Exception e){
                out.println(e);
            }
            %>
            <br><br><center><a href="home.html" >Back To  home Page</a></center><br><br>
    </body>
</html>
