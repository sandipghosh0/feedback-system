
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="college.Course" %>
<%@include file="connection.jsp" %>
<%@page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
      
          <script src="buttonSet.js" type="text/javascript"></script>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      
            <center>
            
        <title>JSP Page</title>
    </head>
    <body>
        
        <%int current=1;
            if(request.getParameter("hidden")!=null){
                current=Integer.parseInt(request.getParameter("hidden"));
            }
              String subname = request.getParameter("subname");  
                
                
            

            String query=("select course.tid,teacher.tname,course.subid,subject.subname,cast(avg(intrst)as decimal(10,2) )as AvgIntrst,cast(avg(chnge)as decimal(10,2)) as AvgChnge,cast(avg(relevant) as decimal(10,2)) as AvgRelevant  from teacher,subject,course where subname='" + subname + "'") ; 
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
            out.print("No more Feedback yet!");
            return;
            }}
            
           
         
           
            %>
  <h1 align="center">View Average Feedback</h1>
  
        <table border="2" align="center">
             <form name="myForm" action="courseavg.jsp">
            <tr>
                <td>Teacher Id</td>
                <td><input type="text" name="tid" value="<%=rs.getString("tid")%>"></td>
            </tr>
                        <tr>
                <td>Teacher Name</td>
                <td><input type="text" name="tname" value="<%=rs.getString("tname")%>"></td>
            </tr>
            
           
            <tr>
                <td>Subject ID</td>
                <td><input type="text" name="subid" value="<%=rs.getString("subid")%>"></td>
            </tr>
            
                        <tr>
                <td>Subject Name</td>
                <td><input type="text" name="subname" value="<%=rs.getString("subname")%>"></td>
            </tr>
            
       
          
          
            <tr>
                <td>Interest</td>
                <td><input type="text" name="intrst" value="<%=rs.getString("AvgIntrst")%>"></td>
            </tr>
            <tr>
                <td>Change</td>
                <td><input type="text" name="chnge" value="<%=rs.getString("Avgchnge")%>"></td>
            </tr>
            <tr>
                <td>Relevant</td>
                <td><input type="text" name="relevant" value="<%=rs.getString("AvgRelevant")%>"></td>
            </tr>
            
            
           
           <tr>
            <input type="hidden" name="hidden" value="<%=current %>">
            <td><input type="button" value="Previous" onclick="window.history.go(-1)"></td>
            <td><input type="button" value="Next" onclick="moveNext()"></td>
            </tr>
         
        </table>
            <br><br><a href="subdetails.jsp" >Search Course Details</a><br><br>
            <br><br><a href="teacherhome.jsp" >Back To Home Page</a><br><br>
            </center>
</form>
</body>
</html>