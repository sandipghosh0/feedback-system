<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="college.feedback" %>

<%@page import="college.teacher" %>

<%@include file="connection.jsp" %>


<%@page import="javax.servlet.*"%>
<!DOCTYPE html>
    <HEAD>
         
        <TITLE></TITLE>
    </HEAD>
    <body>
      <script src="buttonSet.js" type="text/javascript"></script>

        

    

        <H1>Here's the requested data</H1>
<%  
    String tid=request.getParameter("tid");
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
            out.print("No Feedback yet!");
            return;
            }}
%>
         
            
                        
        <form name="myForm" action="feed3.jsp" >

        <TABLE BORDER="2"  align="center">
                        <input type="hidden" name="tid" value="<%=request.getParameter("tid")%>"> 

            <TR>
                                       

                <TR>
               <TR> 
              
               </TR>
               <TR>
               <TR>
               <td>Roll</td>
               
             <TD> <%= resultset.getString("roll") %> </TD>
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
            <input type="hidden" name="hidden" value="<%=current %>">
            <td><input type="button" value="Previous" onclick="window.history.go(-1)"></td>
            <td><input type="button" value="Next" onclick="moveNext()"></td>
            </tr>
           </table>
 
    
            <br><br><center>  <a href="teacherhome.jsp?<%=tid%>">Back To Teacher Home Page</a></CENTER><br><br>
       </form> 
       </body>
       
       <BR>
      </html>
            
    
