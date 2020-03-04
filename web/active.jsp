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
<h1>New Teacher Registration Requests</h1>
<table border="1">
<tr>
<td>Teacher ID</td>
<td>Teacher Name</td>
<td>Dept. ID</td>
<td>Activate</td>
<td>Reject</td>
</tr>
<%
try{

String sql ="select teacher.did,teacher.tid,teacher.tname from teacher where active='N'";
ResultSet rs = st.executeQuery(sql);
while(rs.next()){
%>
<tr>
<td><%=rs.getString("tid") %></td>
<td><%=rs.getString("tname") %></td>
<td><%=rs.getString("did") %></td>

<td><a href="active1.jsp?tid=<%=rs.getString("tid")%>">Yes</a></td>
<td><a href="active2.jsp?tid=<%=rs.getString("tid")%>">Yes</a></td>
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