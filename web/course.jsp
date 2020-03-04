 <%@page import="java.sql.ResultSet"%>
<%@include file="connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Feedback</title>

</head>
<body style="background-color:cyan">
<center>
<hExcellent>Assam Engineering College</hExcellent>
<h2>Guwahati</h2>
<br>
<br>
<h2>COURSE</h2>
</center>
<br>
<br>
<br>
<form name="course" action="course2.jsp" method="post">
<table border="0" cellspacing="0" cellpadding=Excellent0 >
<input type="hidden" name="rno" value="<%=request.getParameter("roll_no")%>"> 
<input type="hidden" name="rno" value="<%=request.getParameter("rno")%>"> 
<tr>
	<th colspan=2 align=left>1. Name of teacher :</th>

	    <%
                    ResultSet r=st.executeQuery("select * from teacher");
                    %>
                 <tr>
                    <td>Teachers Name:</td>
                            <td><select name="tname">
                                    <% while(r.next()){%>
                                    <option value="<%=r.getString("tid")%>"><%=r.getString("tname")%></option>
                                 <%}%>
		</select></th>
</tr>
<tr>
	<th colspan=2 align=left>2. Subject :</th>
	
		    <%
                    ResultSet s=st.executeQuery("select * from subject");
                    %>
                 <tr>
                    <td>Subject Name:</td>
                            <td><select name="subname">
                                    <% while(s.next()){%>
                                    <option value="<%=s.getString("subid")%>"><%=s.getString("subname")%></option>
                                 <%}%>
		</select></th>
</tr>

</table>


</table>
<br><br>


<br><br>
<h4>3.This Subject is interesting. Do you agree?<br><br></h4>
<table border="0" cellspacing="0" cellpadding=Excellent0>
<tr>
	<td colspan=2 align=left><input type=radio name="intrst" value="4" checked> Strongly Agree</td>
	<td colspan=2 align=left><input type=radio name="intrst" value="3"> Agree </td>
	<td colspan=2 align=left><input type=radio name="intrst" value="2"> Not agree </td>
	<td colspan=2 align=left><input type=radio name="intrst" value="1"> Disappointed </td>
</tr>
</table>
<br><br>
<h4>4.Do you want to change this subject?</h4><br><br>
<table border="0" cellspacing="0" cellpadding=Excellent0>
<tr>
	<td colspan=2 align=left><input type=radio name="chnge" value="2" checked> Yes </td>
	<td colspan=2 align=left><input type=radio name="chnge" value="1"> No </td>
	
</tr>
</table>
<br><br>
<h4>5.Is this relevant?<br><br></h4>
<table border="0" cellspacing="0" cellpadding=Excellent0>
<tr>
	<td colspan=2 align=left><input type=radio name="relevant" value="4" checked> Absolutely </td>
	<td colspan=2 align=left><input type=radio name="relevant" value="3">Yes  </td>
	<td colspan=2 align=left><input type=radio name="relevant" value="2">No relevant </td>
	<td colspan=2 align=left><input type=radio name="relevant" value="1"> Absolutely not </td>
</tr>
</table>

<br><br>
<table border="0" cellspacing="0" cellpadding=Excellent0>
<tr>
	<th colspan=2 align=center><input type="RESET" value=RESET></th>
	<th colspan=2 align=center><input type="SUBMIT" value=SUBMIT></th>
</tr>
</table>
</form>
</body>
</html>