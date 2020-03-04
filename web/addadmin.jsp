<%-- 
    Document   : addadmin
    Created on : 20 Sep, 2019, 8:35:40 AM
    Author     : sandi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="college.Admin" %>
<%@include file="connection.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
                 String adid=request.getParameter("adid");
            String aduname=request.getParameter("aduname");
            String adpw=request.getParameter("adpw");
            Admin c=new Admin();
            c.setadid(adid);
            c.setaduname(aduname);
            c.setadpw(adpw);
            
            try{
                String query="insert into Admin(aduname,adpw) values('"+c.getaduname()+"','"+c.getadpw()+"')";
                st.executeUpdate(query);
                
            }
            catch(Exception e){
                out.println(e);
            }
            %>
            <center>
            <h3>Successfully Added</h3>
            <br><br><a href="addmisistratorpage.html" >Back To Home Page</a><br><br>
            </center>>
    </body>
</html>

