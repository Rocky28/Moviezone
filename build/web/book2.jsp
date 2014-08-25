<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Inox.in</title>
        <link href="book_cancel.css" rel="stylesheet" type="text/css" />
        <link href="home.css" rel="stylesheet" type="text/css"/>
    </head>
        <%@ include file="header.jsp" %>
        <%@ include file="menu.html" %>
            <div id="content">
                    <div id="border_1">
                        <form method="post" action="booking" name="frm1">    
                            <table>
                                <tr><td width="20%" align="left"><h3>Select Show Time :</h3></td><td width="50%" align="left"><select name="select_movie" style="background: inherit; border-color: black" >
                                    <option name="show0" value="0"></option>
                                    <option name="show1" value="1">morning show - 10:15 am</option>
                                    <option name="show2" value="2">afternoon show - 12:25 pm</option>
                                    <option name="show3" value="3">evening show - 4:30 pm</option>
                                    <option name="show4" value="4">night show - 7:15 pm</option>                        
                             <% for(int i=0;i<40;i++){%><tr></tr><%}%>   </table>
                             <center><input class="button1" type="submit" name="s1" value="Submit" style="background-color:transparent; color: black; border-color: black"/></center>                             
                        </form>
                    </div>  
                </div>
            <%@ include file="footer.html" %>
        </body>
</html>

