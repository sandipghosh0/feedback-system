<%-- 
    Document   : subdetails
    Created on : 2 Nov, 2019, 11:04:08 AM
    Author     : sandi
--%>
<%@page import="java.sql.ResultSet" %>
<%@include file="connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<body>
<h1>New Student Registration Requests</h1>
<table border="1">
<tr>
<td>Roll No</td>
<td>Student Name</td>
<td>Username</td>
<td>Password</td>
<td>Dept ID</td>
<td>Activate</td>
<td>Reject</td>
</tr>
<%
try{

String sql ="select student.roll,student.sname,student.suname,student.spw,student.did from student where active='N'";
ResultSet rs = st.executeQuery(sql);
while(rs.next()){
%>
<tr>
<td><%=rs.getString("roll") %></td>
<td><%=rs.getString("sname") %></td>
<td><%=rs.getString("suname") %></td>
<td><%=rs.getString("spw") %></td>
<td><%=rs.getString("did") %></td>
<td><a href="active3.jsp?roll=<%=rs.getString("roll")%>">Yes</a></td>
<td><a href="active4.jsp?roll=<%=rs.getString("roll")%>">Yes</a></td>
</tr>
<%
};
} catch (Exception e) {
e.printStackTrace();
}
%>
<br><br><br><a href="adminhome.html" >Back To Previous  Page</a><br><br>
</table>
</body>
</html>