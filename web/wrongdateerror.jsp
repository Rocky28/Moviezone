
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                        <form method="post" action="booking" name="frm1">
                             <table>
                                <tr><td width="20%" align="left"><h3>Select movie :</h3></td><td width="50%" align="left"><select name="select_movie" style="background: dimgray" >
                                    <option name="movie0" value="movie0"></option>
                                    <option name="movie1" value="Iron Man 3">Iron Man 3</option>
                                    <option name="movie2" value="Ted">Ted</option>
                                    <option name="movie3" value="Transformers: Dark of the moon">Transformers: Dark of the moon</option></td></tr>        
                                <%for(int i=1;i<6;i++){%><tr><%}%><td width="18%" align="left"><h3>Show Timing :</h3></td><td width="49%" align="left"><select name="select_showTime" style="background: dimgray" >
                                    <option name="show0" value="0"></option>
                                    <option name="show1" value="1">morninig show - 9:00 am</option>
                                    <option name="show2" value="2">afternoon show - 1:15 pm</option>
                                    <option name="show3" value="3">evening show - 5:00 pm</option>
                                    <option name="show4" value="4">night show - 8:00 pm</option></td></tr></table>
                            <table><%for(int i=1;i<6;i++){%><tr><%}%><td width="30.5%" align="left"><h3>Date of Show :</h3></td><td align="center"><input type="text" name="date" style="background-color:transparent"></td><td align="left">(Date Format: 01-01-2013)</td></tr></table>
                            <table><tr><td width="50%" align="left">Enter date within 7 days from present date..</td></tr>   </table>
                            <table><tr><th>&nbsp;</th><th>&nbsp;</th></tr><tr><td align="right"><input class="button1" type="submit" name="s1" value="Seat Availability" style="background-color:transparent"/></td><th>&nbsp;</th><th>&nbsp;</th><th></th></tr></table>                             
                        </form>
                    </div>  
                </div>
                <%@include file="footer.html" %>
        </body>
</html>

