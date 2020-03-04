<%-- 
    Document   : subdetails
    Created on : 2 Nov, 2019, 11:04:08 AM
    Author     : sandi
--%>
<%@page import="java.sql.ResultSet" %>
<%@include file="connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
            <script src="buttonSet.js" type="text/javascript"></script>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
            <center>
        <title> Subject Details</title>
    </head>
    <body>
        <h1>Welcome to Student Enquiry </h1>
        <%
            int current=1;
            if(request.getParameter("hidden")!=null){
                current=Integer.parseInt(request.getParameter("hidden"));
            }
              ResultSet resultset = 
                st.executeQuery("select * from student where active='Y'");
                  
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
            out.print("No more Data yet!");
            return;
            }}
            
        %>
         <form name="myForm" action="viewstudent.jsp">

        <TABLE BORDER="2"  align="center">
                       
 <tr>
             
                 <tr>
                    <td>Roll NO:</td>
                            <td><input type="text" name="roll" value="<%=resultset.getString("roll")%>">
                        
                        </td>
                    
                </tr>
          <tr>
             
                 <tr>
                    <td>Student Name:</td>
                            <td><input type="text" name="sname" value="<%=resultset.getString("sname")%>">
                        
                        </td>
                    
                </tr>
                  <tr>
                    <td>User Name:</td>
                            <td><input type="text" name="suname" value="<%=resultset.getString("suname")%>">
                        
                        </td>
                    
                </tr>
                  <tr>
                    <td>Password:</td>
                            <td><input type="text" name="spw" value="<%=resultset.getString("spw")%>">
                        
                        </td>
                    
                </tr>
                  <tr>
                    <td>Department</td>
                            <td><input type="text" name="did" value="<%=resultset.getString("did")%>">
                        
                        </td>
                    
                </tr>
              
               <tr>
            <input type="hidden" name="hidden" value="<%=current %>">
            <td><input type="button" value="Previous" onclick="movePrevious()"></td>
            <td><input type="button" value="Next" onclick="moveNext()"></td>
            </tr>

 </table>
    <br><br><br><a href="adminhome.html" >Back To Previous  Page</a><br><br>
            </center>            
    </form>
    </body>
</html>
