<%-- 
    Document   : addcountry
    Created on : 14 Jun, 2019, 9:39:11 PM
    Author     : MY PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="college.Department" %>
<%@include file="connection.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String did=request.getParameter("did");
            String dname=request.getParameter("dname");
            Department c=new Department();
            c.setdid(did);
            c.setdname(dname);
            
            try{
                String query="insert into dept(dname) values('"+c.getdname()+"')";
                st.executeUpdate(query);
                
            }
            catch(Exception e){
                out.println(e);
            }
            %>
    </body>
</html>
