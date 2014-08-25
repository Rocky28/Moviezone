
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Inox.in</title>
       <link href="book_cancel.css" rel="stylesheet" type="text/css" />
        <link href="home.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
         <%@ include file="header.jsp" %>
         <%@ include file="menu.html" %>
         <div id="content">
            <div id="border_1">
                <form name="frm0" action="cancel" method="post" >
                    <table align="left"><tr><td width="29%" align="left"><h3>Email-Id:</h3></td><td width="49%" align="left"><textarea rows="1" cols="20" type="text" name="email" style="background-color: inherit; border-color: black; color: black"></textarea></td></tr></table>
                    <table align="left"><tr><td width="30%" align="left"><h3>Transaction Id:</h3></td><td width="49%" align="left"><input type="text" name="tid" style="background-color: inherit; border-color: black; color: black"/></td></tr></table>
                    <table align="left"><tr><th>&nbsp;</th><th>&nbsp;</th></tr><tr><th><input class="button1" type="submit" name="s2" value="Cancel Tickets" style="background-color: inherit; border-color: black; color: black"/></th></tr></table>
                </form>
             </div>  
          </div>
         <%@include file="footer.html" %>
    </body>
</html>


