
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
               <form name="frm0" method="post" action="rec1">
                    <table align="left">
                        <tr><td width="35%" align="left"><h3>Enter your Email ID :</h3></td><td width="54%" align="left"><input type="text" name="email" style="background-color:transparent;border-color: black;color: black" class="inputfield"/></td></tr>            
                        <% for(int i=0;i<40;i++){%><tr></tr><%}%>   </table>
                             <center><input class="button1" type="submit" name="s1" value="Submit" style="background-color:transparent; color: black; border-color: black"/></center>             
               
                    
               </form>     
            </div>
        </div>
        <%@include file="footer.html" %>
    </body>
</html>
