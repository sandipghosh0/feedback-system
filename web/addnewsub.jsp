<%-- 
    Document   : addadmin
    Created on : 20 Sep, 2019, 8:35:40 AM
    Author     : sandi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="college.subject" %>
<%@include file="connection.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
                // String subid=request.getParameter("subid");
                 String tname=request.getParameter("tname");
                  String subname=request.getParameter("subname");
            
            subject c=new subject();
          //  c.setsubid(subid);
            c.settid(tname);
           
            c.setsubname(subname);
            
            try{
                String query="insert into subject(tid,subname) values('"+c.gettid()+"','"+c.getsubname()+"')";
                st.executeUpdate(query);
                out.println("Successfully Added");
            }
            catch(Exception e){
                out.println(e);
            }
            %>
            <br><br><a href="adminhome.html" >Back To Admin Home Page</a><br><br>
    </body>
</html>
