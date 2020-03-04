<%@page import="java.sql.ResultSet" %>
<%@ page import="java.sql.*" %>

<%@include file="connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
            <script src="buttonSet.js" type="text/javascript"></script>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
            <center>
        <title> Delete account</title>
    </head>
    <body>
        <h1>Welcome to Rejection process </h1>
        <%
           String sql=new String();
            String roll=request.getParameter("roll");
              sql=("DELETE FROM student WHERE roll = '"+roll+"'");
             
                st.executeUpdate(sql);
              out.println("Successfully deleted request");
           
        %>
         
    <br><br><br><a href="adminhome.html" >Back To Previous  Page</a><br><br>
            </center>            
    </form>
    </body>
</html>