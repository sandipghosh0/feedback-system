<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="college.feedback" %>
<%@page import="college.teacher" %>
<%@include file="connection.jsp" %>
<!DOCTYPE html>
<HTML>
    <HEAD>
        <form name="myForm" action="adminfeed1.jsp">
            <script src="buttonSet.js" type="text/javascript"></script>
        <TITLE>Here is your result</TITLE>
    </HEAD>

    <BODY>
        <H1>Fetching Data From a Database</H1>

        <% 
              int current=1;
            if(request.getParameter("hidden")!=null){
                current=Integer.parseInt(request.getParameter("hidden"));
            }
           

            String tid = request.getParameter("tid"); 
             String tname = request.getParameter("tname");
            String tuname = request.getParameter("tuname");  
            ResultSet resultset = 
                st.executeQuery("select teacher.tname,teacher.tid,feedback.roll,feedback.comm,feedback.ability,feedback.present,feedback.teaching,feedback.interest,feedback.regular,feedback.discipline,feedback.attitude from teacher,feedback where tname = '" + tname + "' ") ; 

              if(resultset.next()==true){
            if(current<1){
                current=1;
            }
            
            
            resultset.last();
            int rows=resultset.getRow();
            if(current<=rows){
                resultset.absolute(current);
            
            
            }else
            {
            out.print("No more Feedback yet!");
            return;
            }
            }
        %>
<h1 align="center">View Feedback</h1>
        <TABLE BORDER="1" align="center">
               
          <tr>
             
                 <tr>
                    <td>Teacher ID</td>
                            <td><input type="text" name="tid" value="<%=resultset.getString("tid")%>">
                        
                        </td>
                    
                </tr>
            <tr>
                <td>Teacher Name</td>
                <td><input type="text" name="tname" value="<%=resultset.getString("tname")%>"></td>
            </tr>
          
          
                       <tr>
                <td>Student Roll</td>
                <td><input type="text" name="roll" value="<%=resultset.getString("roll")%>"></td>
            </tr>
          
          
            <tr>
                <td>Communication</td>
                <td><input type="text" name="comm" value="<%=resultset.getString("comm")%>"></td>
            </tr>
            
            
       
          
          
            <tr>
                <td>Ability</td>
                <td><input type="text" name="ability" value="<%=resultset.getString("ability")%>"></td>
            </tr>
            <tr>
                <td>Present</td>
                <td><input type="text" name="present" value="<%=resultset.getString("present")%>"></td>
            </tr>
            <tr>
                <td>teaching</td>
                <td><input type="text" name="teaching" value="<%=resultset.getString("teaching")%>"></td>
            </tr>
            <tr>
                <td>Interest</td>
                <td><input type="text" name="interest" value="<%=resultset.getString("interest")%>"></td>
            </tr>
            <tr>
                <td>Regular</td>
                <td><input type="text" name="regular" value="<%=resultset.getString("regular")%>"></td>
            </tr>
            <tr>
                <td>Discipline</td>
                <td><input type="text" name="discipline" value="<%=resultset.getString("discipline")%>"></td>
            </tr>
            <tr>
                <td>Attitude</td>
                <td><input type="text" name="attitude" value="<%=resultset.getString("attitude")%>"></td>
            </tr>
            
           
          
           
           

       <BR>
<tr>
            <input type="hidden" name="hidden" value="<%=current %>">
            <td><input type="button" value="Previous" onclick="movePrevious()"></td>
            <td><input type="button" value="Next" onclick="moveNext()"></td>
                   </TABLE>
            </tr>
</form>
            <br><br><center>  <a href="adminhome.html" >Back To  Home Page</a></CENTER><br><br>
    </BODY>
</HTML>
