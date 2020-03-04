<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search DB</title>
</head>
<body>
<form  ACTION="courseavg1.jsp" METHOD="POST">
<center>
<marquee bgcolor="yellow" behavior=alternate direction="right" width="100%">Database Lookup</marquee>
<br>
<br><br><br>
<%
    String tid=request.getParameter("tid");
%>
<h3>
     Please enter the name of the subject you want to find Average feedback:
            <BR>
            <INPUT TYPE="TEXT" NAME="subname"><br>
            <BR><br>
            <INPUT TYPE="SUBMIT" value="Submit"><br>
              <br><br><br><a href="subdetails.jsp" >View Subject Details</a><br><br>
              <br><a href="teacherhome.jsp?<%=tid%>" >Back To Home Page</a><br><br>
</h3>
</center>
</form>
</body>
</html>