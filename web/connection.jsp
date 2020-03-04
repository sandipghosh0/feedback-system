<%-- 
    Document   : connection
    Created on : 14 Jun, 2019, 9:32:41 PM
    Author     : MY PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Statement"%>

<%@page import="java.sql.DriverManager"%>

<%@page import="java.sql.Connection" %>

<!DOCTYPE html>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","root"); 
    Statement st=con.createStatement();
    %>
