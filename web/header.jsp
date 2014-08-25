
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
               <link href="book_cancel.css" rel="stylesheet" type="text/css" />
        <link href="home.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="header">
            <div id="title">
                <div id="sitetitle">Movie Zone</div>
            </div>
            <div id="acc_details">
                <table align="right">
                    <tr><th><h3>Welcome<% HttpSession s=request.getSession(true); %>
                    <% if(s.getAttribute("username")==null){ response.sendRedirect("main.jsp");}%>
                    <% out.println("<b>"+(String)s.getAttribute("username")+"</b>");
                    %> </h3></th></tr>
                <tr><td><h3>Current City: <% String loc=(String)s.getAttribute("locname");if(loc==null){out.println("Not Selected");}else{out.println(loc);} %></h3></td></tr>
                    <tr><th> <div class="form_row"><form name="frm0" method="post" action="accset"><input class="button1" type="submit" name="s2" value="Account Settings" style="background-color:transparent; border-color: black;color: black"/></form></div></th></tr>
                    <tr><th> <div class="form_row"><form name="frm10" method="post" action="logout"><input class="button" type="submit" name="s1" value="Logout" style="background-color:transparent;  border-color: black; color: black"/></form></div></th></tr></div>
                </table> 
           </div>
        </div>
    </body>
</html>

