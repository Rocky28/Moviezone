<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="p1.MovieDb"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="home.css" rel="stylesheet" type="text/css" />
<link href="book_cancel.css" rel="stylesheet" type="text/css"/>
<link href="adminCss.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Workspace</title>
    </head>
    <body>
        <%@include file="header5.jsp" %>
        <%@include file="adminMenu.html" %>
           
          <div id="content">
            <div id="tab8">
                <h1 style="padding-left: 170px">Feedbacks :</h1>
                <form name="frm1" action="signup" method="post">
                    <table><% MovieDb ob=new MovieDb(); ResultSet rs=ob.getFeed(); while(rs.next()){%>
                        <tr><th align="left"><h3>Email Id :</h3></th><th align="center" style=" color : black; font-weight: bold; font-size: 20px;"><% out.println(rs.getString(2)); %></th></tr> 
                        <tr><th align="left"><h3>Feedback :</h3></th><th align="center" style=" color : black; font-weight: bold; font-size: 20px;"><% out.println(rs.getString(3)); %></th></tr><%}%></table>
                </form>
            </div>
        </div>  
         
    </body>
</html>