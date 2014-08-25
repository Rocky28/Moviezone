
<%@page import="p1.MovieDb"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*;"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="home.css" rel="stylesheet" type="text/css" />
        <script>
	function getseatnumber(button,elem)
	{
		var i=0, tempseat="",newseat="";
		if(elem.style.backgroundColor=="red")
		{
			elem.style.backgroundColor="white";
                        var seat1=document.select.ans.value;
			var seatno=button;
			for(;i<seat1.length;i++)
			{
				if(seat1.charAt(i)==',')
				{
					if(tempseat==seatno)
					{
						tempseat="";
						i++;
					}
					else
					{
						newseat=newseat+tempseat+",";
						tempseat="";
						i++;
					}
				}
				tempseat+=seat1.charAt(i);
			}
			document.select.ans.value=newseat;		
		}
                else if(elem.style.backgroundColor=="green")
                    {
                        
                    }
		else
		{
			elem.style.backgroundColor="red";
			var seat=document.select.ans.value;
			if(seat=='')
			{
				document.select.ans.value=button+",";
			}
			else
			{
				document.select.ans.value=seat+button+",";	
			}
		}
	}
</script>
<style>
   
    #lefttable button{
        width : 40px;
    }
    
    #righttable button{
        width : 40px;
    }
    
     #centertable button{
        width : 40px;
    }
    
</style>
    </head>
    <body>
        <%@ include file="header.jsp" %>
        <%@ include file="menu.html" %>
        <div id="leftpart">
        <div id="seat">
            <h3 style="color: black; font-size: medium; padding-left: 20px"><% s=request.getSession(true);String dt=(String)s.getAttribute("current_time");if(dt.equals("redirect_to_next_day")){out.println("No shows for today");} %>Movie Name:<% out.println((String)s.getAttribute("currentmn")); %> Show Date:<% out.println((String)s.getAttribute("current_date")); %> Show Time:<% out.println((String)s.getAttribute("current_time")); %></h3>
            <img src="screen.jpg" width="600" height="150" style="padding-left:125px; padding-top: 50px;"/>
        <form name="seat">
<div id="lefttable">
    <table  style="float : left; margin-left: 50px; margin-top: -30px; margin-bottom: 15px;"><% String str=(String)s.getAttribute("seatstatus"); int len;   len=str.length(); %>
    <tr><th><% String tempstr=""; int status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("A1")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="A1" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
        
    <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("A2")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="A2" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
    <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("A3")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="A3" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
    <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("A4")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="A4" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th></tr>

<tr><th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("A5")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="A5" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
    <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("A6")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="A6" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
    <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("A7")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="A7" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
    <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("A8")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="A8" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th></tr>

<tr><th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("A9")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="A9" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
    <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("A10")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="A10" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
    <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("A11")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="A11" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
    <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("A12")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="A12" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th></tr>

<tr><th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("A13")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="A13" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
    <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("A14")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="A14" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
    <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("A15")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="A15" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
    <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("A16")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="A16" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th></tr>

<tr><th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("A17")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="A17" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
    <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("A18")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="A18" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
    <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("A19")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="A19" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
    <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("A20")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="A20" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th></tr>
</table> </div>

 
            <div id="centertable">
<table align="center" style="padding-right : 230px; margin-top : 70px;">
<tr><th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("B1")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="B1" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
    <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("B2")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="B2" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
    <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("B3")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="B3" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
    <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("B4")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="B4" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
    <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("B5")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="B5" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
    <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("B6")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="B6" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
    <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("B7")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="B7" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
    <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("B8")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="B8" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th></tr>

<tr><th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("B9")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="B9" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
    <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("B10")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="B10" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
    <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("B11")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="B11" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
    <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("B12")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="B12" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
    <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("B13")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="B13" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
    <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("B14")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="B14" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
    <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("B15")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="B15" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
    <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("B16")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="B16" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th></tr>

<tr><th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("B17")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="B17" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
    <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("B18")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="B18" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
    <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("B19")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="B19" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
    <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("B20")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="B20" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
    <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("B21")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="B21" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
    <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("B22")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="B22" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
    <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("B23")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="B23" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
    <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("B24")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="B24" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th></tr>

<tr><th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("B25")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="B25" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
    <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("B26")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="B26" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
    <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("B27")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="B27" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
    <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("B28")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="B28" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
    <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("B29")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="B29" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
    <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("B30")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="B30" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
    <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("B31")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="B31" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
    <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("B32")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="B32" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th></tr>

</table></div>
  
            <div id="righttable">           
<table align="right" style="margin-top : -180px; padding-right : 50px;">
    <tr><th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("C1")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="C1" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
        <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("C2")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="C2" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
        <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("C3")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="C3" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
        <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("C4")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="C4" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th></tr>

    <tr><th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("C5")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="C5" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
        <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("C6")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="C6" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
        <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("C7")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="C7" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
        <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("C8")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="C8" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th></tr>
    
    <tr><th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("C9")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="C9" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
        <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("C10")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="C10" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
        <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("C11")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="C11" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
        <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("C12")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="C12" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th></tr>
    
    <tr><th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("C13")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="C13" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
        <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("C14")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="C14" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
        <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("C15")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="C15" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
        <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("C16")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="C16" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th></tr>
        
    <tr><th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("C17")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="C17" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
        <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("C18")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="C18" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
        <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("C19")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="C19" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th>
        <th><% tempstr=""; status=0; for(int i=0;i<len;i++){if(str.charAt(i)==','){if(tempstr.equals("C20")){status=1;break;}else{tempstr="";continue;}}tempstr+=str.charAt(i);} %><button type="button" onclick="getseatnumber(this.id,this)" id="C20" style=" background-color : <%if(status==0){out.println("white");}else{out.println("green");}%> ;"><img src="icon.png" width="90%"/></button></th></tr>
    
</table></div> </form></div></div>
           <div id="status">
               <div id="tab1">
               <form name="select" method="post" action="booking2"> 
                   <table align="left">
                       <tr><th style="padding-bottom: 14px; color : black; font-size: 15px; font-weight: bold;">SELECTED SEAT NUMBERS</th></tr><tr><td></td></tr>
                       <tr><td align="left" width="50" style="padding-bottom: 14px;"><input style="background-color: inherit; border-color: black; color: black" type="text" id="ans" name="seatno"/></td></tr>      
                       <tr><td align="left"  style="padding-bottom: 14px;"><input style="background-color: inherit; border-color: black; color: black; width: 100px" type="submit" value="Register Seat"/></td></tr>      
                   </table>
               </form> </div>
               
               <div id="tab2">
                   
                   
                                  <form name="date&time" method="post" action="changedatentime"> 
                   <table >
                       <tr><th style="padding-bottom: 14px; color : black; font-size: 15px; font-weight: bold;">SELECT DATE</th></tr><tr><td></td></tr>
                        <tr><th align="left" style="padding-bottom: 14px;"><select name="select_date" style="background: inherit; border-color: black" >
                                    <option name="dt1" value="0">Select show date</option>
                                    <option name="dt1" value="<% out.println((String)s.getAttribute("dropdowndate")); %>"><% out.println((String)s.getAttribute("dropdowndate")); %></option>
                                    <option name="d2" value="<% out.println((String)s.getAttribute("dropdownnextdate")); %>"><% out.println((String)s.getAttribute("dropdownnextdate")); %></option>
                                    </th></tr>
                        
                        <tr><th style="padding-bottom: 14px; color : black; font-size: 15px; font-weight: bold;">SELECT TIME</th></tr>
                         <tr><th align="left" style="padding-bottom: 14px;"><select name="select_time" style="background: inherit; border-color: black" >
                                     <option name="time1" value="0">Select show time</option><% String allshow=(String)s.getAttribute("allshow"); int ln=allshow.length();String temptime="";for(int i=0;i<ln;i++){if(allshow.charAt(i)==','){%>
                                     <option name="time2" value="<% out.println(temptime); %>"><% out.println(temptime); %></option><% temptime=""; continue;}temptime+=allshow.charAt(i);} %>
                                    </th></tr>
                       <tr><td align="left" ><input type="submit" value="Get Seat Status" style="width: 100px; background-color: inherit; border-color: black; color: black" /></td></tr>      
                   </table>
               </form>
               </div>
           </div>
    </body>
</html>