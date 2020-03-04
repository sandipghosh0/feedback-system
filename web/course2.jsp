
<%@page import="college.Course" %>
<%@include file="connection.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Course report Page</title>
    </head>

<body>
   
   
<center>
<img src="logo.png" width="780" height="151" alt="logo">
<marquee bgcolor="yellow" behavior=alternate direction="right" width="100%"></marquee>
<br>
<br><br><br>
 <%
     
                  String rno=request.getParameter("rno");
                 String subname=request.getParameter("subname");
                  String tname=request.getParameter("tname");
            
            String intrst=request.getParameter("intrst");
            String chnge=request.getParameter("chnge");
            String relevant=request.getParameter("relevant");
            
            Course c=new Course();
            c.setrno(rno);
            c.settid(tname);
            c.setsubid(subname);
            
            c.setintrst(intrst);
            c.setchnge(chnge);
            c.setrelevant(relevant);
        
            try{
                String query="insert into course(roll,tid,subid,intrst,chnge,relevant) values('"+c.getrno()+"','"+c.gettid()+"','"+c.getsubid()+"','"+c.getintrst()+"','"+c.getchnge()+"','"+c.getrelevant()+"')";
                st.executeUpdate(query);
                out.println("Successfully Added,Go back to home page.");
                
            }
            catch(Exception e){
                out.println(e);
            }
            %>
            
         <br><br><a href="viewfeed1.jsp?roll_no=<%=rno%>" >View Feedback</a><br><br>  
 <br><br><a href="home.html" >Back To Home Page</a><br><br>
</table>
</center>
</body>
</html>