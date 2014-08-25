<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <title>Inox.in</title>
<link href="home.css" rel="stylesheet" type="text/css" />
<link href="book_cancel.css" rel="stylesheet" type="text/css" />
</head>
    <body>
        <div id="header">
    	<div id="title">
            <div id="sitetitle">INOX <span>- Barrackpore</span></div>
        </div>
        </div>
        <div id="content">
            <div id="left_sub_content">
                <h1 align="left">ENTER CREDENTIALS :</h1>
                    <form name="frm1" action="signup" method="post">
                        <table><tr><th align="left"><h3>NAME :</h3></th></tr><tr><th><textarea style="background-color:transparent" rows="1" cols="30" name="name"></textarea></th></tr></table>
                            <div class="form_row"><table><tr><th align="left"><h3>ADDRESS :</h3></th></tr><tr><th><textarea style="background-color:transparent" rows="4" cols="30" name="address"></textarea></th></tr></table></div>
                            <div class="form_row"><table><tr><th align="left"><h3>EMAIL ID :</h3></th></tr><tr><th><textarea style="background-color:transparent" rows="1" cols="30" name="email"></textarea></th></tr></table></div>
                            <div class="form_row"><table><tr><th align="left"><h3>PHONE :</h3></th></tr><tr><th><textarea style="background-color:transparent" rows="1" cols="20" name="phone"></textarea></th></tr></table></div>
                            <div class="form_row"><table><tr><th align="left"><h3>PASSWORD :</h3></th></tr><tr><th><input style="background-color:transparent" type="password" name="pass" /></th><th></th><th></th><th><h4>Password miss-match</h4></h4></tr></table></div>
                            <div class="form_row"><table><tr><th align="left"><h3>RE-ENTER PASSWORD</h3></th></tr><tr><th><input style="background-color:transparent" type="password" name="re_pass"/></th></tr></table></div>
                            <div class="form_row"><table><tr><th align="left"><h3>PASSWORD RECOVERY QUESTION :</h3></th></tr></table></div>
                            <div class="form_row"><table><tr><th><select name="question" style="background: dimgray">
                                <option name="q0" value="q0">----select question----</option>
                                <option name="your first school" value="your first school">your first school ?</option>
                                <option name="your favorite football player" value="your favorite football player">your favorite football player ?</option>
                                <option name="your favorite cricket player" value="your favorite cricket player">your favorite cricket player ?</option>
                                <option name="your favorite musician" value="your favorite musician">your favorite musician ?</option>
                                <option name="your favorite author" value ="your favorite author">your favorite author ?</option>
                                <option name="how many siblings have you got" value ="how many siblings have you got">how many siblings have you got ?</option>
                                </select></th></tr></table></div>
                            <div class="form_row"><table><tr><th align="left"><h3>ANSWER :</h3></th></tr><tr><th><textarea style="background-color:transparent" rows="1" cols="22" name="answer"></textarea></th></tr></table></div>
                            <table> <tr><th>&nbsp;</th><th>&nbsp;</th></tr>
                            <tr><th><input style="background-color: transparent" class="button1" type="submit" name="s1" value="SUBMIT"/></th><th><input style="background-color: transparent" class="button1" type="reset" name="r1" value="CLEAR"/></th></tr></table>
                    </form>
		</div>
        </div>
        <%@include file="footer.html" %>
    </body>
</html>