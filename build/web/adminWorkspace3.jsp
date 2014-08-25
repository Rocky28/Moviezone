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
                    <h1 align="center">About Us Details</h1>
                    <form name="newMovie" action="chngaboutus" method="post">
                        <table>
                            <tr><td align="left" width="15%" style="padding-bottom: 14px;"><h3>Theater Name:</h3></td><th style="padding-bottom: 14px;"><textarea style="background-color:transparent; border-color: black; color: black" rows="1" cols="40" name="name"></textarea></th></tr>
                            <tr><td align="left" width="35%" style="padding-bottom: 14px;"><h3>City :</h3></td><th align="left" style="padding-bottom: 14px;"><select name="hallno" style="background: dimgray; background-color:transparent; border-color: black; color: black"/>
                                        
                                        <option name="City Center-1" value="kolkata">Kolkata</option>
                                        <option name="City Center-2" value="Mumbai">Mumbai</option>
                                        <option name="Liluah" value="Delhi">Delhi</option>
                                        <option name="Rajarhat" value="Bangalore">Banglore</option>
                                    </select></th></tr>

                                    
                            
                            <tr><td align="left" width="35%" style="padding-bottom: 14px;"><h3>Phone Number :</h3></td><th align="left" style="padding-bottom: 14px;"><textarea style="background-color:transparent; border-color: black; color: black" rows="1" cols="40" name="phone"></textarea></th></tr>
                                    <tr><td align="left" width="35%" style="padding-bottom: 14px;"><h3>Email ID:</h3></td><th align="left" style="padding-bottom: 14px;"><textarea style="background-color:transparent; border-color: black; color: black" rows="1" cols="40" name="emailid"></textarea></th></tr>

                              <tr></tr><tr><th style="padding-top: 15px"></th><th align="left"><input type="submit" name="Submit" value="Submit Details" style="background-color:transparent; border-color: black;color: black; width: 100px" /></th></tr>          
                        </table>
                    </form>
                </div>

            </div>

     </div>     
    </body>
</html>
