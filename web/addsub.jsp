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

    <form name="addsub" action="addnewsub.jsp" method="post"  >
<center>
<img src="logo.png" width="780" height="151" alt="logo"><br><br>
<font color=BLUE><MARQUEE WIDTH=100% BEHAVIOR=ALTERNATE BGColor=yellow><u><b>ADD NEW SUBJECT</b></u></MARQUEE></font><br><br>
<br><br>
<table width="50%" border="0" align="center" cellpadding="5" cellspacing="5"> 
<tr>
<th align=left>Enter Subject Name :</th><td align=left><input type=text name="subname" size="30" ></td>
</tr>
<tr>
       <%
                    ResultSet rs=st.executeQuery("select * from teacher");
                    %>
                 <tr>
                    <td>Teacher Name:</td>
                            <td><select name="tname">
                                    <% while(rs.next()){%>
                                    <option value="<%=rs.getString("tid")%>"><%=rs.getString("tname")%></option>
                                 <%}%>
                        </select></td>
                    
                </tr>
<tr>

<tr>
<tr>


	<th colspan=0 align=right><input type="RESET" value=RESET></th>
	<th colspan=0 align=left><input type="SUBMIT" value=SUBMIT></th>
</tr>
</table>
</center>
</form>