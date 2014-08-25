<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
    </head>
    <body>
        <div id="header">
        <div id="title">
            <div id="sitetitle">Movie Zone</div>
        </div>
            <div id="header_box">
                <form method="post" action="signin">
                    <h3>Account Login</h3>
                    <b></b>
                    <div class="form_row"><label>Email</label><input style="background-color:transparent" class="inputfield" name="email_address" type="text" id="email_addremss"/></div>
                    <div class="form_row"><label>Password</label><input style="background-color:transparent" class="inputfield" name="password" type="password" id="password"/></div>
                    <input class="button" type="submit" name="Submit" value="Login" style="background-color:transparent" />
                </form>
            </div>
        </div>
    </body>
</html>
