<%@ page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*;"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Inox.in</title>
<link href="home.css" rel="stylesheet" type="text/css" />
<link href="style_1.css" rel="stylesheet" type="text/css"/>
<link href="book_cancel.css" rel="stylesheet" type="text/css"/>
<link href="photo.css" rel="stylesheet" type="text/css"/>
</head>
  <%  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            
             PreparedStatement ps; ResultSet rs; Connection db=null;

                          try{db=DriverManager.getConnection("jdbc:odbc:dsn77");ps=db.prepareStatement("select * from sessionId");
                          rs=ps.executeQuery();  if(rs.next()!=false){ HttpSession s=request.getSession(false);s.setAttribute("username",rs.getString(3)); s.setAttribute("current", rs.getString(2));
                  response.sendRedirect("reshome.jsp");}
                            else
                         {  throw new Exception("jlt");}}catch(Exception e){ System.out.println(e);%>
    <body>
	<div id="header">
            <div id="title">
                <div id="sitetitle">Movie Zone</div>
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
            </div>
        </div>
            <%@include file="hall_details.html"%>
           <%@include file="footer.html" %>
    </body>
    <%}%>
</html>

