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
        <h1>Welcome to Subject Enquiry </h1>
        <%
            int current=1;
            if(request.getParameter("hidden")!=null){
                current=Integer.parseInt(request.getParameter("hidden"));
            }
              ResultSet resultset = 
                st.executeQuery("select * from subject");
                 
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
            out.print("No Data yet!");
            return;
            }  }
        %>
         <form name="myForm" action="subdetails1.jsp">

        <TABLE BORDER="2"  align="center">
                       
 <tr>
             
                 <tr>
                    <td>Subject ID:</td>
                            <td><input type="text" name="subid" value="<%=resultset.getString("subid")%>">
                        
                        </td>
                    
                </tr>
          <tr>
             
                 <tr>
                    <td>Subject Name:</td>
                            <td><input type="text" name="subname" value="<%=resultset.getString("subname")%>">
                        
                        </td>
                    
                </tr>
              
               <tr>
            <input type="hidden" name="hidden" value="<%=current %>">
            <td><input type="button" value="Previous" onclick="movePrevious()"></td>
            <td><input type="button" value="Next" onclick="moveNext()"></td>
            </tr>

 </table>
                

    <br><br><br><a href="adminhome.html" >Back To Home   Page</a><br><br>
            </center>            
    </form>
    </body>
</html>
