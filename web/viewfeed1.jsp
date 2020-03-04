<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="college.feedback" %>

<%@page import="college.teacher" %>

<%@include file="connection.jsp" %>


<%@page import="javax.servlet.*"%>
<!DOCTYPE html>
<html>
    <center>

    <HEAD>

        <TITLE>Fetching Data From a Database</TITLE>
    </HEAD>

    <body>
               <script src="buttonSet.js" type="text/javascript"></script>

        <H1>Here's the requested data</H1>
<%  
    int current=1;
            if(request.getParameter("hidden")!=null){
                current=Integer.parseInt(request.getParameter("hidden"));
           
            }
          
  
         
            ResultSet resultset = 
                st.executeQuery("select * from feedback");


             

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
            out.print("No More Data yet!");
            return;
            }}
%>
         
            
                        
                <form name="myForm" action="viewfeed1.jsp">
        <TABLE BORDER="2"  align="center">
                                                <input type="hidden" name="roll_no" value="<%=request.getParameter("roll_no")%>"> 


            <TR>
                                       

                <TR>
               <TR> 
               <td>Teacher ID</td>
              
               <TD> <%= resultset.getString("tid") %> </TD>
               </TR>
               </TR>
               <TR>
               <TR>
               <td>Roll</td>
               
             <TD> <%= request.getParameter("roll_no") %> </TD>
             </TR>
              </TR>
               <TR>
               <td>Communication</td>
              
               <TD> <%= resultset.getString("comm") %> </TD>
               </TR>
               <TR>
               <td>Ability</td>
               
           
               <TD> <%= resultset.getString("ability") %> </TD>
               </TR>
           <TR>
               <TR>
               <td>Presentation</td>
               
                <TD> <%= resultset.getString("present") %> </TD>
               </TR>
               <TR>
               <td>Teaching</td>
               
               <TD> <%= resultset.getString("teaching") %> </TD>
               </TR>
               <TR>
               <td>Interest Created</td>
              
               <TD> <%= resultset.getString("interest") %> </TD>
               </TR>
               <TR>
               <td>Regular</td>
              
               <TD> <%= resultset.getString("regular") %> </TD>
               </TR>
               <TR>
               <td>Discipline</td>
               
               <TD> <%= resultset.getString("discipline") %> </TD>
               </TR>
               <TR>
               <td>Attitude</td>
               
               <TD> <%= resultset.getString("attitude") %> </TD>
               </TR>
               
           </TR>
          
         
         
           </tr>
           </TR>
              <tr>
            <input type="hidden" name="hidden" value="<%=current%>">
            <td><input type="button" value="Previous" onclick="window.history.go(-1)"></td>
            <td><input type="button" value="Next" onclick="moveNext()"></td>
            </tr>
           </table>
 
    
         <br><br><a href="frame1.jsp" >Back To Home Page</a><br><br>
         <br><br><a href="home.html" >Exit</a><br><br>
         </center>
       </form> 
       </body>
       
       <BR>
      </html>
            
    
