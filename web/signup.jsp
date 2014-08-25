<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>


        <title>Inox.in</title>
        <link href="home.css" rel="stylesheet" type="text/css" />
        <link href="book_cancel.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
	<div id="header">
            <div id="title">
                <div id="sitetitle">INOX <span>- Barrackpore</span></div>
            </div>
        
        <div id="header_box">
            <form name="login" method="post" action="signin">
                <h3>Account Login</h3>
                <b></b>
                <div class="form_row"><label><strong>Email</strong></label><input style="background-color:transparent" class="inputfield" name="email_address" type="text" id="email_address"/></div>
                    <div class="form_row"><label><strong>Password</strong></label><input style="background-color:transparent" class="inputfield" name="password" type="password" id="password"/></div>
                    <input class="button" type="submit" name="Submit" value="Login" style="background-color:transparent; border-color: black;color: black" />
                    <div class="form_row"><font size="2px" style="color: black"><strong>Forgot password ?</strong></font><a href="recover.jsp"><font size="2px" style="color: black">Click here to recover password</font></a></div>    
                    <div class="form_row"><a href="signup.jsp"><h3><font color="lightseagreen">CREATE ACCOUNT</font></h3></a></div>
            </form>
            </div></div>
        <div id="content">
            <div id="tab5">
                <h1 style="padding-left: 120px">ENTER CREDENTIALS :</h1>
                <form name="frm1" action="signup" method="post">
                    <table><tr><th align="left"><h3>NAME :</h3></th></tr><tr><th><textarea style="background-color:transparent;  border-color: black; color: black" rows="1" cols="30" name="name"></textarea></th></tr></table>
                        <div class="form_row"><table><tr><th align="left"><h3>EMAIL ID :</h3></th></tr><tr><th><textarea style="background-color:transparent;  border-color: black; color: black" rows="1" cols="30" name="email" id="email_address"></textarea></th></tr></table></div>
                         <div class="form_row"><table><tr><th align="left"><h3>City :</h3></th></tr></table></div>
                        <div class="form_row"><table><tr><th><select name="city" style="background-color: transparent; border-color:  black">
                            <option name="q0" value="q0">----select your city----</option>
                            <option name="Kolkata" value="Kolkata">Kolkata</option>
                            <option name="Mumbai" value="Mumbai">Mumbai</option>
                            <option name="Bangalore" value="Bangalore">Bangalore</option>
                            <option name="Delhi" value="Delhi">Delhi</option>
                            </select></th></tr></table></div>
                        <div class="form_row"><table><tr><th align="left"><h3>PHONE :</h3></th></tr><tr><th><textarea style="background-color:transparent;  border-color: black; color: black" rows="1" cols="20" name="phone"></textarea></th></tr></table></div>
                        <div class="form_row"><table><tr><th align="left"><h3>PASSWORD :</h3></th></tr><tr><th><input style="background-color:transparent; border-color: black; color: black" type="password" name="pass" /></th></tr></table></div>
                        <div class="form_row"><table><tr><th align="left"><h3>RE-ENTER PASSWORD</h3></th></tr><tr><th><input style="background-color:transparent; border-color: black; color: black" type="password" name="re_pass"/></th></tr></table></div>
                        <div class="form_row"><table><tr><th align="left"><h3>PASSWORD RECOVERY QUESTION :</h3></th></tr></table></div>
                        <div class="form_row"><table><tr><th><select name="question" style="background-color: transparent; border-color: black">
                            <option name="q0" value="q0">----select question----</option>
                            <option name="your first school" value="your first school">your first school ?</option>
                            <option name="your favorite football player" value="your favorite football player">your favorite football player ?</option>
                            <option name="your favorite cricket player" value="your favorite cricket player">your favorite cricket player ?</option>
                            <option name="your favorite musician" value="your favorite musician">your favorite musician ?</option>
                            <option name="your favorite author" value ="your favorite author">your favorite author ?</option>
                            <option name="how many siblings have you got" value ="how many siblings have you got">how many siblings have you got ?</option>
                            </select></th></tr></table></div>
                        <div class="form_row"><table><tr><th align="left"><h3>ANSWER :</h3></th></tr><tr><th><textarea style="background-color:transparent; border-color: black; color: black" rows="1" cols="22" name="answer"></textarea></th></tr></table></div>
                       

                    <table style="padding-top: 25px;">
                        <tr><td><button  style="background-color: transparent; border-color: transparent; height: 60px" class="button1" type="submit" name="s1" /><img src="submit.png"/></td><td><input style="background-color: transparent;  border-color: black; color: black" class="button1" type="reset" name="r1" value="CLEAR"/></td></tr></table>
                 </form>
            </div>
        </div>  
        <%@include file="footer.html" %>
    </body>
</html>