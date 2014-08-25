
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
                        <div id="text4">BOOKING DETAILS</div>
                        <div id="text5">
                        <table>
                                <% %>
                                <tr><td width="20%" align="left">NAME:</td> <td><h3><% out.println("<b>"+s.getAttribute("username")+"</b>");%></h3></td></tr>
                                <% for(int i=1;i<6;i++){%><tr><%}%><td width="30%" align="left">MOVIE:</td><td> <h3><% out.println("<b>"+s.getAttribute("currentmn")+"</b>");%></h3></td></tr>
                                <% for(int i=1;i<6;i++){%><tr><%}%><td width="30%" align="left">DATE:</td><td> <h3><% out.println("<b>"+s.getAttribute("current_date")+"</b>");%></h3></td></tr>
                                <% for(int i=1;i<6;i++){%><tr><%}%><td width="30%" align="left">SHOW TIME:</td><td><h3> <% out.println("<b>"+s.getAttribute("current_time")+"</b>");%></h3></td></tr>
                                <% for(int i=1;i<6;i++){%><tr><%}%><td width="30%" align="left">TICKETS:</td><td><h3> <% out.println("<b>"+s.getAttribute("seats")+"</b>");%></h3></td></tr>
                                <% for(int i=1;i<6;i++){%><tr><%}%><td width="30%" align="left">TRANSACTION ID:</td><td><h3> <% out.println("<b>"+s.getAttribute("tid")+"</b>");%></h3></td></tr>
                                <% for(int i=1;i<6;i++){%><tr><%}%><td width="30%" align="left">TOTAL COST: </td><td><h3><% out.println("<b>"+s.getAttribute("tc")+"</b>");%></h3></td></tr>
                        </table>
                        <form action="genPdf" method="post"><input type="submit" value="Generate Pdf"></form>
                        </div> 
                </div>
            </div>
    <center>  <%@include file="footer.html" %></center>
        </body>
</html>

