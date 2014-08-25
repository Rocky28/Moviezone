
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
        <%@include file="header.jsp" %>
        <%@include file="menu.html" %>
        <div id="content">        
            <div id="acc_set">
                <form name="frm1" action="upadd" method="post">
                    <table>
                    <tr><td width="20%" align="left" style="padding-bottom: 14px;"><h3>NAME :</h3></td><td width="84%" align="left" style="padding-bottom: 14px;"><h3><% out.println("<b>"+(String)s.getAttribute("username")+"</b>"); %></h3></td><th><th><th><th></th><td><a href="updatename.jsp"><img src="edit.png" height="30" width="55"/></a></td></tr>
                    <tr><td width="21%" align="left" style="padding-bottom: 14px;"><h3>ADDRESS :</h3></td><td width="80%" align="left"><select name="hallno" style="background: dimgray; background-color:transparent; border-color: black; color: black"/>
                                        
                                        <option name="City Center-1" value="kolkata">Kolkata</option>
                                        <option name="City Center-2" value="Mumbai">Mumbai</option>
                                        <option name="Liluah" value="Delhi">Delhi</option>
                                        <option name="Rajarhat" value="Bangalore">Banglore</option>
                                    </select></td></tr>
                    <tr><td width="36%" align="left" style="padding-bottom: 14px;"><h3>EMAIL ID :</h3></td><td align="left" style="padding-bottom: 14px;"><h3><% out.println("<b>"+(String)s.getAttribute("current")+"</b>"); %></h3></td></tr>
                    <tr><td width="20%" align="left" style="padding-bottom: 14px;"><h3>PHONE :</h3></td><td width="84%" align="left" style="padding-bottom: 14px;"><h3><% out.println("<b>"+(String)s.getAttribute("phone")+"</b>"); %></h3></td><th><th><th><th></th><th><a href="updatephone.jsp"><img src="edit.png" height="30" width="55"/></a></th></tr>
                    <tr><td width="20%" align="left" style="padding-bottom: 14px;"><h3>PASSWORD :</h3></td><td width="84%" align="left" style="padding-bottom: 14px;"><h3><% out.println("<b>"+(String)s.getAttribute("pass")+"</b>"); %></h3></td><th><th><th><th></th><th><a href="updatepass.jsp"><img src="edit.png" height="30" width="55"/></a></th></tr>
                    <tr><td width="21%" align="left" style="padding-bottom: 14px;"><h3>PASSWORD RECOVERY QUESTION :</h3></td><td width="40%" align="left" style="padding-bottom: 14px;"><h3><% out.println("<b>"+(String)s.getAttribute("ques")+"</b>"); %></h3></td><th><th><th><th></th><th><a href="updateques.jsp"><img src="edit.png" height="30" width="55"/></a></th></tr>
                    <tr><td width="21%" align="left" style="padding-bottom: 14px;"><h3>ANSWER :</h3></td><td width="51%" align="left" style="padding-bottom: 14px;"><h3><% out.println("<b>"+(String)s.getAttribute("ans")+"</b>"); %></h3></td></tr> </table>
                    <table> <tr><th>&nbsp;</th><th>&nbsp;</th></tr><tr><% for(int i=1;i<50;i++){%><th></th> <% } %><th><input class="button1" style="background-color: transparent; color: black; border-color: black" type="submit" name="s1" value="SUBMIT"/></th></tr></table>
                 </form>
            </div>
        </div>    
        <%@include file="footer.html" %>	      
    </body>
</html>
