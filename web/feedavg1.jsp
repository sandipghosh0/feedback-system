
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="college.feedback" %>
<%@include file="connection.jsp" %>
<!DOCTYPE html>
<html>
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <form name="myForm" action="feedavg1.jsp">
            <script src="buttonSet.js" type="text/javascript"></script>

       
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
                        int current=1;
            if(request.getParameter("hidden")!=null){
                current=Integer.parseInt(request.getParameter("hidden"));
            }
              String tid = request.getParameter("tid"); 
              String tname = request.getParameter("tname"); 
                
                
            

            String query=("select teacher.tname,feedback.tid,cast(avg(comm) as decimal(10,2)) AvgComm,cast(avg(ability) as decimal (10,2)) AvgAbility,cast(avg(present) as decimal (10,2)) AvgPresent,cast(avg(teaching) as decimal (10,2) )AvgTeaching,cast(avg(interest) as decimal(10,2)) AvgInterest,cast(avg(regular) as decimal(10,2)) AvgRegular,cast(avg(discipline) as decimal(10,2)) AvgDiscipline,cast(avg(attitude) as decimal(10,2)) AvgAttitude from teacher,feedback where tname='" + tname + "'") ; 
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
            }}
           
         
           
            %>
  <h1 align="center">View Average Feedback</h1>
  
        <table border="2" align="center">
             
                                            
                                                
                                                

            <tr>
                <td>Teacher Id</td>
                <td><input type="text" name="tid" value="<%=rs.getString("tid")%>"></td>
            </tr>
            <tr>
                <td>Teacher Name</td>
                <td><input type="text" name="tid" value="<%=rs.getString("tname")%>"></td>
            </tr>
            
           
            <tr>
                <td>Communication</td>
                <td><input type="text" name="comm" value="<%=rs.getString("Avgcomm")%>"></td>
            </tr>
            
            
       
          
          
            <tr>
                <td>Ability</td>
                <td><input type="text" name="ability" value="<%=rs.getString("AvgAbility")%>"></td>
            </tr>
            <tr>
                <td>Present</td>
                <td><input type="text" name="present" value="<%=rs.getString("AvgPresent")%>"></td>
            </tr>
            <tr>
                <td>teaching</td>
                <td><input type="text" name="teaching" value="<%=rs.getString("AvgTeaching")%>"></td>
            </tr>
            <tr>
                <td>Interest</td>
                <td><input type="text" name="interest" value="<%=rs.getString("AvgInterest")%>"></td>
            </tr>
            <tr>
                <td>Regular</td>
                <td><input type="text" name="regular" value="<%=rs.getString("AvgRegular")%>"></td>
            </tr>
            <tr>
                <td>Discipline</td>
                <td><input type="text" name="discipline" value="<%=rs.getString("AvgDiscipline")%>"></td>
            </tr>
            <tr>
                <td>Attitude</td>
                <td><input type="text" name="attitude" value="<%=rs.getString("AvgAttitude")%>"></td>
            </tr>
            
            

        </table>
    <br><center><a href="adminhome.html" >Back To Home Page</a></center>><br><br>

</form>

</body>
</html>