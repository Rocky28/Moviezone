<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Inox.in</title>
<link href="home.css" rel="stylesheet" type="text/css" />
<link href="style_1.css" rel="stylesheet" type="text/css"/>
<link href="book_cancel.css" rel="stylesheet" type="text/css"/>
<link href="photo.css" rel="stylesheet" type="text/css"/>
</head>
    <body>
	<div id="header">
            <div id="title">
                <div id="sitetitle">INOX <span>- Barrackpore</span></div>
            </div>
            <div id="header_box">
                <form method="post" action="signin">
                    <h3>Account Login</h3>
                    <b></b>
                    <div class="form_row"><label>Email</label><input style="background-color:transparent" class="inputfield" name="email_address" type="text" id="email_addremss"/></div>
                    <div class="form_row"><label>Password</label><input style="background-color:transparent" class="inputfield" name="password" type="password" id="password"/></div>
                    <div class="form_row"><h4>Wrong username or password</h4></div>
                    <input class="button" type="submit" name="Submit" value="Login" style="background-color:transparent" />
                    <div class="form_row"><label>Forgot password ?</label><a href="recover.jsp">Click here to recover password</a></div>    
                    <div class="form_row"><a href="signup.jsp"><h3><font color="yellow">CREATE ACCOUNT</font></h3></a></div>
                </form>
            </div>
        </div>
    <%@include file="hall_details.html"%>
    <%@include file="footer.html" %>
 </body>
</html>
