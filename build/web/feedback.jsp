
<%@page language="java" contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Inox.in</title>
<link href="home.css" rel="stylesheet" type="text/css" />
<link href="style_1.css" rel="stylesheet" type="text/css"/>
<link href="book_cancel.css" rel="stylesheet" type="text/css"/>
</head>
    <body>
        <%@ include file="header.jsp" %>
        <%@ include file="menu.html" %>
            <form name="frm0" method="post" action="feedback">
            <div id="content">
                    <div id="border">
                        <table><tr align="left"><th><h3>Name:</h3></th></tr><tr><th><textarea style=" background-color: inherit; border-color: black; color: black" name="name" rows="1" cols="50" style="background-color:transparent"></textarea></th></tr></table>
                        <table><tr align="left"><th><h3>Email Id:</h3></th></tr><tr><th><textarea name="email" rows="1" cols="50" style="background-color: inherit; border-color: black; color: black"></textarea></th></tr></table>
                        <table><tr align="left"><th><h3>Message:</h3></th></tr><tr><th><textarea name="msg" rows="15" cols="50" style="background-color: inherit; border-color: black; color: black"></textarea></th></tr></table>
                        <table><tr><th>&nbsp;</th><th>&nbsp;</th></tr><tr>
                        </th><th><input class="button1" type="submit" name="s1" value="Send Feedback" style="background-color:transparent"/></th></tr></table>
                    </div>
            </div>
            </form>
        <%@include file="footer.html" %>
    </body>
</html>
