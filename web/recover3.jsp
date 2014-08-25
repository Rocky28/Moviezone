
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
                <form name="frm0" method="post" action="rec3">
                    <table aligh="left"><% HttpSession s=request.getSession(true);%>
                        <%for(int i=1;i<5;i++){%><tr><%}%><td align="left"><h3>Enter New Password : </h3></td><th><input style="background-color:transparent; color: black; border-color: black" class="inputfield" name="password" type="password" /></th></tr>
                        <%for(int i=1;i<5;i++){%><tr><%}%><th><h3>Renter New Password : </h3></th><th><input style="background-color:transparent; color: black; border-color: black" class="inputfield" name="re_pass" type="password"/></th></tr>
                        <% for(int i=0;i<20;i++){%><tr></tr><%}%>   </table>
                             <center><input class="button1" type="submit" name="s1" value="Submit" style="background-color:transparent; color: black; border-color: black"/></center>             
                    
                </form>      
            </div>
        </div>
        <%@include file="footer.html"  %>
    </body>
</html>
