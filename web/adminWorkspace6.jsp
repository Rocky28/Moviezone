<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="home.css" rel="stylesheet" type="text/css" />
<link href="book_cancel.css" rel="stylesheet" type="text/css"/>
<link href="adminCss.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Workspace</title>
    </head>
    <body>
        <%@include file="header5.jsp" %>
        <%@include file="adminMenu.html" %>  
           <div id="content">
            <div id="tab7">
                <h1 style="padding-left: 120px">Check Ticket Validation</h1>
                <form name="frm1" action="checkTicket" method="post">
                    <table ><tr><th align="left"><h3>Transaction ID :</h3></th><th width="250" align="left"><textarea style="background-color:transparent; border-color: black; color: black" rows="1" cols="20" name="name"></textarea></th></table>
                    <table style="padding-top: 25px; padding-left: 140px"><tr><th align="center"><input type="submit" style="background-color: transparent; border-color: black; color: black" value="Check Details"/></th></tr></table>
                    
                </form>
                
    </body>
</html>

