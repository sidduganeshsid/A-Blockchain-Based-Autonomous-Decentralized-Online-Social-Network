<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Friend Request Status</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>

<style type="text/css">
<!--
.style1 {font-size: 30px}
.style10 {font-size: 25px; color: #FFFFFF; font-weight: bold; }
.style14 {
	font-family: "Times New Roman", Times, serif;
	font-size: 20px;
}
.style20 {
	font-size: 20px;
	color: #00FF00;
}
.style22 {color: #FF0000; font-size: 20px;}
.style23 {color: #FF0000}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="#" class="style1">A Blockchain based Autonomous Decentralized Online Social Network</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="a_login.jsp"><span>Admin</span></a></li>
          <li class="active"><a href="u_login.jsp"><span>User</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="935" height="307" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="935" height="307" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="935" height="307" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
	    <p align="center" class="style10"> Friend Request Status </p>
	    <p>&nbsp;</p>
		
		
 
		  
		  
<%@ include file="connect.jsp" %>
            <%@ page import="java.util.*"%>
            <%@ page import="java.text.*"%>
            <%@ page import="java.util.Date"%>
            <%@ page import="java.sql.*"%>
            <%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
            <%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
				
            <%
    String s1 = "", s2 = "", s3 = "", s4 = "", s5 = "", s6 = "", s7 = "", s8, s9 = "", s10, s11, s12, s13,s14,s15,s16,s17;
	int i = 0, j = 0, k = 0;
    String friend=request.getParameter("friend");
	String com1=request.getParameter("com");
	String user=(String)application.getAttribute("user");
	String com=(String)application.getAttribute("com");

try
{
                    SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
					SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
					Date now = new Date();
				    String strDate = sdfDate.format(now);
					String strTime = sdfTime.format(now);
					String dt = strDate + "   " + strTime;
					
					if(com.equalsIgnoreCase(com1))
					{
					
					String sql="select * from friend_req where rfrom='"+user+"' and rto='"+friend+"' ";
					Statement st=connection.createStatement();
					ResultSet rs=st.executeQuery(sql);
					if(rs.next())
					{
					  s4 = rs.getString(4);//satatus
						
						if(s4.equalsIgnoreCase("Requested"))
						{
						 %> 
            <span class="style5 style6 style22">You Have Already Sent him Friend Request. </span></p>
          <p><span class="style8 style22">Please Wait...!!!</span> 
            <%
						}
						else if(s4.equalsIgnoreCase("Friends"))
						{
						 %> 
            <span class="style8 style20">You Both Are Friends Already</span> 
            <%
						}				


                    }
					else
					{
					 
					 String str="Requested";
					 String strQuery222 = "insert into friend_req(rfrom,rto,status,req_dt) values('"+user+"','"+friend+"','"+str+"','"+dt+"')";
					 connection.createStatement().executeUpdate(strQuery222);
					 
					 
					 %> 
        <p align="center" class="style12 style20">Friend Request Sent Successfully</p> 
            <%
					}
					}
					else
					{
					%> 
        <p align="center" class="style12 style20 style23">You Cannot Send Friend Request. </p>
        <p align="center" class="style12 style20 style23">Because <%=friend%> is From Another Community. </p>
        <%
					}
					
					
					
					
					
}
catch(Exception e) 
{
out.print(e);
}

%>		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  <p>&nbsp;</p>
		  <p>&nbsp;</p>
		  <p>&nbsp;</p>
		  <p align="right"><a href="u_search_friend.jsp" class="style14">Back</a></p>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>User</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="u_main.jsp">User Main</a></li>
            <li><a href="u_login.jsp">Log Out</a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
