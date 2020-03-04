<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial;
  color: white;
}

.split {
  height: 100%;
  width: 50%;
  position: fixed;
  z-index: 1;
  top: 0;
  overflow-x: hidden;
  padding-top: 20px;
}

.left {
  left: 0;
  background-image: url("aec.jpeg");
   background-repeat: no-repeat;
  background-size: 100% 100%;
}

.right {
  right: 0;
  background-image: url("aec.jpeg");
  background-repeat: no-repeat;
  background-size: 100% 100%;
}

.centered {
  position: absolute;
  top: 50%;
  left: 50%;
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
String roll_no;
roll_no=request.getParameter("roll_no");


%>
<div class="split left">
  <div class="centered">
    <img src="logo.png" alt="View Report">
    <h2>To View feedback, Click below</h2>
    <a href="viewfeed1.jsp?roll_no=<%=roll_no%>">VIEW FEEDBACK</a><br><br>

  </div>
</div>

<div class="split right">
  <div class="centered">
    <img src="logo.png" alt="Submit Report">
    <h2>To Submit Feedback, Click below</h2>
    <a href="teacherreport.jsp?roll_no=<%=roll_no%>">SUBMIT REPORT</a><br><br>

  </div>
</div>
<center> <br><br><a href="home.html" >Exit</a><br><br></center>
</body>
</html>