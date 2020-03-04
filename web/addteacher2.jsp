<%@page import="java.sql.ResultSet"%>
<%@include file="connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
<body>
<body bgcolor="cyan">

    <form name="addteacher" action="addteacher1.jsp" method="post"  >
<center>
<img src="logo.png" width="780" height="151" alt="logo"><br><br>
<font color=BLUE><MARQUEE WIDTH=100% BEHAVIOR=ALTERNATE BGColor=yellow><u><b>ADD NEW TEACHER</b></u></MARQUEE></font><br><br>
<br><br>
<table width="50%" border="0" align="center" cellpadding="5" cellspacing="5"> 
<tr>
<th align=left>Enter Name :</th><td align=left><input type=text name="tname" size="30" ></td>
</tr>
<tr>
       <%
                    ResultSet rs=st.executeQuery("select * from dept");
                    %>
                 <tr>
                    <td>Department Name:</td>
                            <td><select name="dname">
                                    <% while(rs.next()){%>
                                    <option value="<%=rs.getString("did")%>"><%=rs.getString("dname")%></option>
                                 <%}%>
                        </select></td>
                    
                </tr>
<tr>

<tr>
<tr>
<tr>
<th align=left>Enter UserName :</th><td align=left><input type=text name="tuname" size="20" ></td>
</tr>
<tr>
	<th align=left>Password :</th>
	<td align=left><input name="tpw" type=password size="20" ><br></td>
</tr>

	<th colspan=0 align=right><input type="RESET" value=RESET></th>
	<th colspan=0 align=left><input type="SUBMIT" value=SUBMIT></th>
</tr>
</table>
</center>
</form>