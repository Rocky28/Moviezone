
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
                    <form name="frm1" action="upques" method="post">
                        <table>
                        <tr><td width="20%" align="left" style="padding-bottom: 14px;"><h3>NAME :</h3></td><td width="84%" align="left" style="padding-bottom: 14px;"><h3><% out.println("<b>"+(String)s.getAttribute("username")+"</b>"); %></h3></td><td><a href="updatename.jsp"><img src="edit.png" height="30" width="55"/></a></td></tr>
                        <tr><td width="20%" align="left" style="padding-bottom: 14px;"><h3>ADDRESS :</h3></td><td width="84%" align="left" style="padding-bottom: 14px;"><h3><% out.println("<b>"+(String)s.getAttribute("address")+"</b>"); %></h3></td><td><a href="updateadd.jsp"><img src="edit.png" height="30" width="55"/></a></td></tr>
                            <tr><td width="26%" align="left" style="padding-bottom: 14px;"><h3>EMAIL ID :</h3></td><td  align="left" style="padding-bottom: 14px;"><h3><% out.println("<b>"+(String)s.getAttribute("current")+"</b>"); %></h3></td></tr>
                            <tr><td width="20%" align="left" style="padding-bottom: 14px;"><h3>PHONE :</h3></td><td width="84%" align="left" style="padding-bottom: 14px;"><h3><% out.println("<b>"+(String)s.getAttribute("phone")+"</b>"); %></h3></td><th><a href="updatephone.jsp"><img src="edit.png" height="30" width="55"/></a></th></tr>
                            <tr><td width="20%" align="left" style="padding-bottom: 14px;"><h3>PASSWORD :</h3></td><td width="84%" align="left" style="padding-bottom: 14px;"><h3><% out.println("<b>"+(String)s.getAttribute("pass")+"</b>"); %></h3></td><th><a href="updatepass.jsp"><img src="edit.png" height="30" width="55"/></a></th></tr>
                        <tr></tr><tr><td width="20%" align="left"><h3>PASSWORD RECOVERY QUESTION :</h3></td><td width="90%" align="left"><select name="question" style="border-color: black;background: inherit">
                            <option name="q0" value="q0">----select question----</option>
                            <option name="your first school" value="your first school">your first school ?</option>
                            <option name="your favorite football player" value="your favorite football player" >your favorite football player ?</option>
                            <option name="your favorite cricket player" value="your favorite cricket player">your favorite cricket player ?</option>
                            <option name="your favorite musician" value="your favorite musician">your favorite musician ?</option>
                            <option name="your favorite author" value ="your favorite author">your favorite author ?</option>
                            <option name="how many siblings have you got" value ="how many siblings have you got">how many siblings have you got ?</option>
                            </select></td></tr>
                        <tr><td width="20%" align="left"><h3>ANSWER :</h3></td><td width="55%" align="left"> <textarea style="background-color: inherit; border-color: black; color: black; font-size: 5;font-weight: bold" rows="1" cols="25" name="name"></textarea></td></tr></table>
                       <table> <tr><th>&nbsp;</th><th>&nbsp;</th></tr><tr><% for(int i=1;i<50;i++){%><th></th> <% } %><th><input class="button1" style="background-color: transparent; color: black; border-color: black" type="submit" name="s1" value="SUBMIT"/></th></tr></table>
                    </form>
                </div>
            </div>   
            <%@ include file="footer.html" %>
    </body>
</html>
