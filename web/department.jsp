<%-- 
    Document   : country
    Created on : 14 Jun, 2019, 9:34:58 PM
    Author     : MY PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 align="center">Add Department</h1>
        <form action="AddDepartment.jsp" method="post">
        <table border="2">

            <tr>
                <td>Department Name:</td>
                <td><input type="text" name="dname"></td>
            </tr>
            <tr>
                <td><input type="submit" value="submit" name="submit"></td>
            </tr>
        </table>
        </form>
    </body>
</html>
