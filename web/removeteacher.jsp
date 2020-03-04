<%@include file="connection.jsp"%>
<%@page import="college.teacher" %> 
<%@page import="college.Department" %>
<%@page import="java.sql.ResultSet"%> 
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Remove A Teacher</title>
<script language="javascript" >
</script>
</head>
<body>
<body bgcolor="cyan">
<form name="removeteacher" action="removeteacher.jsp" >
<center>
<img src="logo.png" width="780" height="151" alt="logo"><br><br>
<font color=BLUE><MARQUEE WIDTH=100% BEHAVIOR=ALTERNATE BGColor=yellow><u><b>REMOVE A TEACHER</b></u></MARQUEE></font><br><br>
<br><br>
<table width="50%" border="0" align="center" cellpadding="5" cellspacing="5"> 
<tr>

       <%
                    ResultSet rs=st.executeQuery("select * from dept");
                    %>
                 <tr>
                    <td>Select Department Name:</td>
                            <td><select name="dname">
                                    <% while(rs.next()){%>
                                    <option value="<%=rs.getString("did")%>"><%=rs.getString("dname")%></option>
                                 <%}%>
                        </select></td>
                    
                </tr>
<tr>
<tr>
       <%
                    ResultSet rst=st.executeQuery("select * from teacher");
                    %>
                 <tr>
                    <td>Select Teacher Name:</td>
                            <td><select name="tname">
                                    <% while(rst.next()){%>
                                    <option value="<%=rst.getString("tid")%>"><%=rst.getString("tname")%></option>
                                 <%}%>
                        </select></td>
                    
                </tr>
<tr>




    

                        		
    <%
        		
try
{
	String tname, dname;
	tname=request.getParameter("tname");
	dname=request.getParameter("dname");
	if( tname != null || dname != null)
	{	

 		//Connection c=DriverManager.getConnection("jdbc:odbc:abc","root","root");
		//Statement s =c.createStatement();
		
            String sql1 = "delete from course where tid="+tname+"";
            st.execute(sql1);
	String sql2="delete from feedback where tid="+tname+"";
        st.execute(sql2);
String sql3="delete from subject where tid="+tname+"";
st.execute(sql3);
	
                String sql = "delete from teacher where tid="+tname+"";
		out.print(sql);
                
                st.execute(sql);
                
                out.println("Successfully removed");
               // response.sendRedirect("adminhome.html");
		%><jsp:forward page="adminhome.html"/> <%
	}
	
}catch(Exception e ){}
%>

<tr>
	<th colspan=0 align=right><input type="RESET" value=RESET></th>
	<th colspan=0 align=left><input type="SUBMIT" value=SUBMIT></th>
</tr>		

</center>
</table>
</form>
</body>
</html>