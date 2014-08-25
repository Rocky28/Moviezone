
<%@page language="java" contentType="text/html" pageEncoding="UTF-8" session="true"%>
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
        <%@ include file="header.jsp" %>
        <%@ include file="menu.html"%>     
            <div id="content">
                <div id="acc_set">
                    <form name="frm1" action="uppass" method="post">
                        <div class="form_row_1"><table><tr><td width="20%" align="left"><h3>NAME :</h3></td><td width="84%" align="left"><h3><% out.println("<b>"+(String)s.getAttribute("username")+"</b>"); %></hd></td><td><a href="updatename.jsp">edit</a></td></tr></table></div>
                        <div class="form_row_1"><table><tr><td width="20%" align="left"><h3>ADDRESS :</h3></td><td width="84%" align="left"><h3><% out.println("<b>"+(String)s.getAttribute("address")+"</b>"); %></h3></td><td><a href="updateadd.jsp">edit</a></td></tr></table></div>
                        <div class="form_row_1"><table><tr><td width="36%" align="left"><h3>EMAIL ID :</h3></td><td align="left"><h3><% out.println("<b>"+(String)s.getAttribute("current")+"</b>"); %></h3></td></tr></table></div>
                        <div class="form_row_1"><table><tr><td width="20%" align="left"><h3>PHONE :</h3></td><td width="84%" align="left"><h3><% out.println("<b>"+(String)s.getAttribute("phone")+"</b>"); %></h3></td><th><a href="updatephone.jsp">edit</a></th></tr></table></div>
                        <div class="form_row_1"><table><tr><td width="20%" align="left"><h3>PASSWORD :</h3></td><td width="20%" align="left"><input style="background-color: transparent" type="password" name="pass" /></td><td align="left"><font color="orangered" size="4px">Password miss-match</font></td></tr></table></div>
                        <div class="form_row_1"><table><tr><td width="20%" align="left"><h3>RE-ENTER PASSWORD :</h3></td><td width="79%" align="left"><input style="background-color: transparent" type="password" name="re_pass"/></td></tr></table></div>
                        <div class="form_row_1"><table><tr><td width="21%" align="left"><h3>PASSWORD RECOVERY QUESTION :</h3></td><td width="40%" align="left"><h3><% out.println("<b>"+(String)s.getAttribute("ques")+"</b>"); %></h3></td><th><th><th><th></th><th><a href="updateques.jsp">edit</a></th></tr></table></div>
                        <div class="form_row_1"><table><tr><td width="21%" align="left"><h3>ANSWER :</h3></td><td width="50%" align="left"><h3><% out.println("<b>"+(String)s.getAttribute("ans")+"</b>"); %></h3></td></tr></table></div>
                        <table> <tr><th>&nbsp;</th><th>&nbsp;</th></tr><tr><% for(int i=1;i<50;i++){%><th></th> <% } %><th><input class="button1" style="background-color: transparent" type="submit" name="s1" value="SUBMIT"/></th></tr></table>
                    </form>
                </div>
            </div>   
            <%@include file="footer.html" %>
        </body>
</html>
