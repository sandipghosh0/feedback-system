<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial;
  color: white;
}



.A {
  height:25%;
  width:25%;
  background-image: url("aec.jpeg");
   background-repeat: no-repeat;
  background-size: 100% 100%;
}

.B {
  height:25%;
  width:25%;
  background-image: url("aec.jpeg");
  background-repeat: no-repeat;
  background-size: 100% 100%;
}
.C{
  height:25%;
  width:25%;
  background-image: url("aec.jpeg");
  background-repeat: no-repeat;
  background-size: 100% 100%;
}
.D {
  height:25%;
  width:25%;
  background-image: url("aec.jpeg");
  background-repeat: no-repeat;
  background-size: 100% 100%;
}
div{ 
         padding : 1%; 
         color: white; 
         background-image: url("aec.jpeg");;
         height: 25%;
         width: 25%; 
         border: solid black; 
         } 

.centered {
  position: relative;
  top: 25%;
  left: 25%;
  transform: translate(-50%, -50%);
  text-align: center;
}

.centered img {
  width: 150px;
  border-radius: 50%;
}
</style>
</head>
<body>
<%
String tid;
tid=request.getParameter("tid");


%>
<div class="A">
  
    <img src="logo.png" alt="View Report">
    <h2>To Generate Report Click below</h2>
    <a href="feed3.jsp?tid=<%=tid%>">View Report</a><br><br>

  </div>
</div>

<div class="B">
  
    <img src="logo.png" alt="Submit Report">
    <h2>To Generate average report, Click below</h2>
    <a href="avgfeedsearch.jsp? tid=<%=tid%>">View average report</a><br><br>

  </div>
</div>
    <div class="C">
  
    <img src="logo.png" alt="View Report">
    <h2>To change password, Click below</h2>
    
<a href="changeteacherpass.jsp?tid=<%=tid%>">Change Password</a><br><br>

  </div>
    <div class="D">
  
    <img src="logo.png" alt="View Report">
    <h2>To View course report, Click below</h2>
    <a href="avgcoursesearch.jsp?tid=<%=tid%>">VIEW FEEDBACK</a><br><br>

  </div>
</body>
</html>