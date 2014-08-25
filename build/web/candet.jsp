<%@page language="java" contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
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
                <div id="border">
                        <div id="text4">CANCELING DETAILS</div>
                        <div id="text5">                 
                            <table>
                                <% s=request.getSession(true);%>
                                <tr><td width="30%" align="left">NAME: </td><td><h3> <% out.println("<b>"+s.getAttribute("username")+"</b>");%></h3></td></tr>
                                <% for(int i=1;i<6;i++){%><tr><%}%><td width="30%" align="left">MOVIE:</td><td><h3> <% out.println("<b>"+s.getAttribute("movie")+"</b>");%></h3></td></tr>
                                <% for(int i=1;i<6;i++){%><tr><%}%><td width="30%" align="left">DATE:</td><td><h3> <% out.println("<b>"+s.getAttribute("date")+"</b>");%></h3></td></tr>
                                <% for(int i=1;i<6;i++){%><tr><%}%><td width="30%" align="left">SHOW TIME:</td><td><h3> <% out.println("<b>"+s.getAttribute("show")+"</b>");%></h3></td></tr>
                                <% for(int i=1;i<6;i++){%><tr><%}%><td width="30%" align="left">TICKETS: </td><td><h3><% out.println("<b>"+s.getAttribute("not")+"</b>");%></h3></td></tr>
                                <% for(int i=1;i<6;i++){%><tr><%}%><td width="30%" align="left">T0TAL PRICE : </td><td><h3><% out.println("<b>"+s.getAttribute("tc")+"</b>");%></h3></td></tr>
                                <% for(int i=1;i<6;i++){%><tr><%}%><td width="30%" align="left">TRANSACTION ID:</td><td><h3> <% out.println("<b>"+s.getAttribute("tid")+"</b>");%></h3></td></tr>
                            </table>
                        </div> 
                </div>
            </div>
              <%@include file="footer.html" %>
        </body>
</html>

