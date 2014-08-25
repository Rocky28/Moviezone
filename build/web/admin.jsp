<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*;"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inox Admin</title>
        <link href="home.css" rel="stylesheet" type="text/css" />
        <link href="style_1.css" rel="stylesheet" type="text/css"/>
        <link href="book_cancel.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="header">
            <div id="title">
                <div id="sitetitle">INOX <span>- Barrackpore</span></div>
            </div>
            <div id="header_box">
            <form name="login" method="post" action="signin">
                <h3>Admininstrator Login</h3>
                <b></b>
                    <div class="form_row"><label>Admin ID</label><input style="background-color:transparent" class="inputfield" name="email_address" type="text" id="email_address"/></div>
                    <div class="form_row"><label>Password</label><input style="background-color:transparent" class="inputfield" name="password" type="password" id="password"/></div>
                    <input class="button" type="submit" name="Submit" value="Login" style="background-color:transparent" />
            </form>
            </div>
        </div>
    </body>
</html>
