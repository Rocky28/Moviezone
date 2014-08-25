
<%@page language="java" contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="p1.MovieDb"%>
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
         <%@ include file="header.jsp" %>
         <%@ include file="menu.html" %>
         <div id="content">
             <div id="border_1"><% MovieDb ob=new MovieDb(); ResultSet rs=ob.getAboutUs((String)s.getAttribute("locname"),(String)s.getAttribute("current")); boolean b=rs.next();if(b==true){%>
                 <p style="color : black; font-size: 20px; font-weight: bold;">Theater Name : <%  out.println(rs.getString(2)); %></p>
                 <p style="color : black; font-size: 20px; font-weight: bold;">Email id : <% out.println(rs.getString(3)); %></p>
                 <p style="color : black; font-size: 20px; font-weight: bold;">Phone Number : <%  out.println(rs.getString(4)); %></p><% }else{ %>
                 <p style="color : black; font-size: 20px; font-weight: bold;">You have not selected a city yet.......</p><%}%>
            </div>
          </div>
         <%@ include file="footer.html" %>
    </body>
</html>
