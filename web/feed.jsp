
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet" %>
<%@include file="connection.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <form name="myForm" action="feed.jsp">
            <script src="buttonSet.js" type="text/javascript"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int current=1;
            if(request.getParameter("hidden")!=null){
                current=Integer.parseInt(request.getParameter("hidden"));
            }
           
            //String query="select * from feedback,dept,teacher,subject where feedback.did=dept.did , feedback.tid=teacher.tid, feedback.subid=subject.subid";
            String query="select feedback.*,teacher.*,dept.*,subject.*,student.* from feedback,teacher,dept,subject,student;";
            ResultSet rs=st.executeQuery(query);
            if(rs.next()==true){
            if(current<1){
                current=1;
            }
            
            
            rs.last();
            int rows=rs.getRow();
            if(current<=rows){
                rs.absolute(current);
            
            
            }else
            {
            out.print("No Feedback yet!");
            return;
            }
            }
            %>
  <h1 align="center">View Feedback</h1>
        <table border="2" align="center">
            
          <tr>
             
                 <tr>
                    <td>Department Name:</td>
                            <td><input type="text" name="dname" value="<%=rs.getString("dname")%>">
                        
                        </td>
                    
                </tr>
            <tr>
                <td>Teacher Name</td>
                <td><input type="text" name="tname" value="<%=rs.getString("tname")%>"></td>
            </tr>
          
          
            <tr>
                <td>subject Name</td>
                <td><input type="text" name="subname" value="<%=rs.getString("subname")%>"></td>
            </tr>
            
            <tr>
                <td>Roll No</td>
                <td><input type="text" name="roll" value="<%=rs.getString("roll")%>"></td>
            </tr>
          
          
            <tr>
                <td>Communication</td>
                <td><input type="text" name="comm" value="<%=rs.getString("comm")%>"></td>
            </tr>
            
            
       
          
          
            <tr>
                <td>Ability</td>
                <td><input type="text" name="ability" value="<%=rs.getString("ability")%>"></td>
            </tr>
            <tr>
                <td>Present</td>
                <td><input type="text" name="present" value="<%=rs.getString("present")%>"></td>
            </tr>
            <tr>
                <td>teaching</td>
                <td><input type="text" name="teaching" value="<%=rs.getString("teaching")%>"></td>
            </tr>
            <tr>
                <td>Interest</td>
                <td><input type="text" name="interest" value="<%=rs.getString("interest")%>"></td>
            </tr>
            <tr>
                <td>Regular</td>
                <td><input type="text" name="regular" value="<%=rs.getString("regular")%>"></td>
            </tr>
            <tr>
                <td>Discipline</td>
                <td><input type="text" name="discipline" value="<%=rs.getString("discipline")%>"></td>
            </tr>
            <tr>
                <td>Attitude</td>
                <td><input type="text" name="attitude" value="<%=rs.getString("attitude")%>"></td>
            </tr>
            
           
            <tr>
            <input type="hidden" name="hidden" value="<%=current %>">
            <td><input type="button" value="Previous" onclick="movePrevious()"></td>
            <td><input type="button" value="Next" onclick="moveNext()"></td>
            </tr>
        </table>
                        <br><br><center>  <a href="adminhome.html" >Back To  Home Page</a></CENTER><br><br>

</form>
</body>
</html>