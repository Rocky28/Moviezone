
<%@page import="p1.MovieDb"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true" import="java.sql.*;" %>
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
                    <div id="border_1">
                        <form method="post" action="booking" name="frm1">    
                            <table>
                                <tr><td width="20%" align="left"><h3>Select movie :</h3></td><td width="50%" align="left"><select name="select_movie" style="background: inherit; border-color: black; width: 200px;" >
                                            <option value="movie0">Select movie</option><% MovieDb ob = new MovieDb();  ResultSet rs=ob.getMovies((String)s.getAttribute("current"),(String)s.getAttribute("locname")); while(rs.next()){ String str=rs.getString(1);%>           
                                            <option value="<% out.println(str); %>"><% out.println(str); %></option><% } %></select></td></tr>                                  
                             <% for(int i=0;i<40;i++){%><tr></tr><%}%>   </table>
                             <center><input class="button1" type="submit" name="s1" value="Submit" style="background-color:transparent; color: black; border-color: black"/></center>                             
                        </form>
                    </div>  
                </div>
            <%@ include file="footer.html" %>
        </body>
</html>

