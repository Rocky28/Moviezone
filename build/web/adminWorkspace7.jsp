<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <div id="tab5">
                <h1 style="padding-left: 120px">BOOKING DETAILS</h1>
                <form name="frm1"><% HttpSession s=request.getSession(true); %>
                    
                    <div class="form_row"><table><tr><th align="left"><h3>Movie :</h3></th><th width="240" align="left" style="color : black; font-size: 20px; font-weight: bold;"><% out.println((String)s.getAttribute("movie_name")); %></th></tr></table></div>
                    <div class="form_row"><table><tr><th align="left"><h3>Theater Name :</h3></th><th width="195" align="left" style="color : black; font-size: 20px; font-weight: bold;"><% out.println((String)s.getAttribute("theater_name")); %></th></tr></table></div>
                    <div class="form_row"><table><tr><th align="left"><h3>Date :</h3></th><th width="270" align="left" style="color : black; font-size: 20px; font-weight: bold;"><% out.println((String)s.getAttribute("date")); %></th></tr></table></div>     
                    <div class="form_row"><table><tr><th align="left"><h3>Show Time :</h3></th><th width="160" align="left" style="color : black; font-size: 20px; font-weight: bold;"><% out.println((String)s.getAttribute("show_time")); %></th></tr></table></div>
                    <div class="form_row"><table><tr><th align="left"><h3>Seat  :</h3></th><th width="300" align="left" style="color : black; font-size: 20px; font-weight: bold;"><% out.println((String)s.getAttribute("seats")); %></th></tr></table></div>
                    <div class="form_row"><table><tr><th align="left"><h3>Total Cost :</h3></th><th width="160" align="left" style="color : black; font-size: 20px; font-weight: bold;"><% out.println((String)s.getAttribute("total_cost")); %></th></tr></table></div></form>
          
    </body>
</html>
