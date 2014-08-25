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
        <div id="content1">
            <div id="content2">
        	<div id="content3">
                    <h1 align="center">New Movie Details</h1>
                    <form name="newMovie" method="post" action="entermovie">
                        <table>
                            <tr><td align="left" width="15%" style="padding-bottom: 14px;"><h3>Movie Name :</h3></td><th style="padding-bottom: 14px;"><textarea style="background-color:transparent; border-color: black; color: black" rows="1" cols="40" name="name"></textarea></th></tr>
                             <tr><td align="left" width="35%" style="padding-bottom: 14px;"><h3>City :</h3></td><th align="left" style="padding-bottom: 14px;"><select name="hallno" style="background: dimgray; background-color:transparent; border-color: black; color: black"/>
                                        
                                        <option name="Kolkata" value="Kolkata">Kolkata</option>
                                        <option name="Mumbai" value="Mumbai">Mumbai</option>
                                        <option name="Delhi" value="Delhi">Delhi</option>
                                        <option name="Banglore" value="Banglore">Banglore</option>
                        </select></th></tr>
                             <tr><td align="left" width="35%" style="padding-bottom: 14px;"><h3>Theater Name :</h3></td><th align="left" style="padding-bottom: 14px;"><textarea style="background-color:transparent; border-color: black; color: black" rows="1" cols="40" name="tn"></textarea></th></tr>
        
                                    
                                    <tr><td align="left" width="35%" style="padding-bottom: 14px;"><h3>Show Time :</h3></td><th align="left" style="padding-bottom: 14px;"><textarea style="background-color:transparent; border-color: black; color: black" rows="1" cols="40" name="st"></textarea></th></tr> 

                                    <tr></tr><tr><th style="padding-top: 15px"></th><th align="left"><input type="submit" name="Submit" value="Submit Details" style="background-color:transparent; border-color: black;color: black; width: 100px" /></th></tr>
                        </table>
                    </form>
                </div>

            </div>

     </div>     
    </body>
</html>
