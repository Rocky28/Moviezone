
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
        <%@include file="header.jsp" %>
        <%@include file="menu.html" %>
        <div id="content">
            <div id="border">
                <div id="text1">SEAT AVAILABILITY</div><% s=request.getSession(true);%>
                <form name ="frm90" method="post" action="booking2">
                    <table><tr><td width="20%" align="left"><h3>Movie :</h3></td><td width="26.5%" align="left"><h3><% out.println("<b>"+(String)s.getAttribute("movie")+"</b>");%></h3></td></tr>
                        <%for(int i=1;i<10;i++){%><tr><%}%><td width="20%" align="left"><h3>Show Time :</h3></td><td width="43%" align="left"><h3><% out.println("<b>"+(String)s.getAttribute("show")+"</b>");%></h3></td></tr>
                        <%for(int i=1;i<10;i++){%><tr><%}%><td width="20%" align="left"><h3>Date :</h3></td><td width="25%" align="left"><h3><% out.println("<b>"+(String)s.getAttribute("date")+"</b>");%></h3></td></tr>
                        <%for(int i=1;i<10;i++){%><tr><%}%><td width="20%" align="left"><h3>Available Tickets :</h3></td><td width="43%" align="left"><h3> <% out.println("<b>"+s.getAttribute("nota")+"</b>");%></h3></td></tr>
                        <%for(int i=1;i<10;i++){%><tr><%}%><td width="20%" align="left"><h3>No. of Tickets :</h3></td><td width="42%" align="left"><select name="select_not" style="background: dimgray">
                            <option name="ticket0" value="ticket0"></option>
                            <option name="ticket1" value="ticket1">1</option>
                            <option name="ticket2" value="ticket2">2</option>
                            <option name="ticket3" value="ticket3">3</option>
                            <option name="ticket4" value="ticket4">4</option>
                            <option name="ticket5" value="ticket5">5</option>
                            <option name="ticket6" value="ticket6">6</option>
                            <option name="ticket7" value="ticket7">7</option>
                            <option name="ticket8" value="ticket8">8</option>
                            <option name="ticket9" value="ticket9">9</option>
                            <option name="ticket10" value="ticket10">10</option></td></tr>
                        <%for(int i=1;i<10;i++){%><tr><%}%><td width="28%" align="left"><h3>Enter User-Id to Book Your Ticket :</h3></td><td width="70%" align="left"><input type="text" name="uid" style="background-color:transparent"></td></tr>
                        <%for(int i=1;i<10;i++){%><tr><%}%><td align="left">User Id did not match..</td></tr>    
                        <%for(int i=1;i<20;i++){%><tr><%}%><td width="50%" align="right"><input class="button1"type="submit" name="s2" value="Book Tickets" style="background-color:transparent"/> </td></tr></table>
                  </form>
            </div>  
        </div>
        <%@ include file="footer.html" %>
    </body>
</html>

