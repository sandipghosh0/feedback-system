
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet" %>
<%@include file="connection.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <form name="myForm" action="feed1.jsp">
            <script src="buttonSet.js" type="text/javascript"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int current=1;
            if(request.getParameter("hidden")!=null){
                current=Integer.parseInt(request.getParameter("hidden"));
            }
           
            String query="select tid,avg(comm) as AvgComm,avg(ability) as AvgAbility,avg(present) as AvgPresent,avg(teaching) as AvgTeaching,avg(interest) as AvgInterest,avg(regular) as AvgRegular,avg(discipline) as AvgDiscipline,avg(attitude) as AvgAttitude from feedback where tid=13;";
            ResultSet rs=st.executeQuery(query);
            
            if(current<1){
                current=1;
            }
            rs.last();
            int rows=rs.getRow();
            if(current<=rows){
                rs.absolute(current);
            }
            %>
  <h1 align="center">View Average Feedback</h1>
        <table border="2" align="center">
            
            <tr>
                <td>Teacher Id</td>
                <td><input type="text" name="tid" value="<%=rs.getString("tid")%>"></td>
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
            
           
            <tr>
            <input type="hidden" name="hidden" value="<%=current %>">
            <td><input type="button" value="Previous" onclick="movePrevious()"></td>
            <td><input type="button" value="Next" onclick="moveNext()"></td>
            </tr>
        </table>
</form>
</body>
</html>