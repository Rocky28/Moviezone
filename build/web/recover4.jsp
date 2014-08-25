
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Inox.in</title>
        <link href="home.css" rel="stylesheet" type="text/css" />
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <link href="book_cancel.css" rel="stylesheet" type="text/css"/>
    </head>
        <body>
            <%@include file="header2.jsp" %>
            <div id="content">
                <div id="recover">
                    <div id="text4">Password Recovery Steps</div>
                    <table align="left"><% HttpSession s=request.getSession(true);%><tr><td align="center"><h3>You have successfully changed your password.....</h3></td></tr>
                    <tr><td><a href="main.jsp"><h3><font color="yellow">Back to Main</font></h3></a></td></tr></table>
                </div>
            </div>
            <%@include file="footer.html" %>
        </body>
</html>
