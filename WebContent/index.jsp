<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manager Login</title>
    </head>
    <body background="images/13.jpg">
    <div style="height="500px"width="700px"background="images/13.jpg"></div>
        <div>
        <form method="post" action="login.jsp">
            <center>
            <table frame="box" width="50%" cellpadding="3"bgcolor="lightpink">
                <thead>
                    <tr>
                        <th colspan="2">Login Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    
                </tbody>
            </table>
            </center>
            </div>
        </form>
    </body>
</html>