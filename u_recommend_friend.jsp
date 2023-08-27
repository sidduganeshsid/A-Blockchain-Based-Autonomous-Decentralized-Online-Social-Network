<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Recommend Post to Friend</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script language="javascript" type="text/javascript">
function valid()
{
var na3=document.s.rto.value;
if(na3=="--select--")

{
alert("Please Select Your Friend");
document.s.rto.focus();
return false;
}
}
</script>
<style type="text/css">
<!--
.style1 {font-size: 30px}
.style10 {font-size: 25px; color: #FFFFFF; font-weight: bold; }
.style14 {
	font-family: "Times New Roman", Times, serif;
	font-size: 20px;
}
.style15 {font-family: "Times New Roman", Times, serif}
.style19 {color: #FFFFFF}
.style21 {font-size: 20px}
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
	    <p align="center" class="style10">Recommend Post to Friend </p>
	    <p>&nbsp;</p>
		
		
<%
    String tname1=request.getParameter("pname");
	String by=request.getParameter("powner");
%> 		  
 		  
<form name="s" action="u_recommend_friend1.jsp" method="post" id="form1" onSubmit="return valid()"  ons target="_top">		  
<table width="428" border="0" align="center">
              <tr>
                <td width="188" height="35" bgcolor="#9eb8dd"><div align="center" class="style10 style6 style15 style16"><strong>Post Name </strong></div></td>
                <td width="230" bgcolor="#00FFFF"><span class="style19">
                  <label>
                  <input type="text" name="tname" value="<%=tname1%>" readonly="readonly" />
                  </label>
                </span></td>
              </tr>
			  
			  <tr>
                <td width="188" height="35" bgcolor="#9eb8dd"><div align="center" class="style10 style6 style15 style16"><strong>Post By </strong></div></td>
                <td width="230" bgcolor="#00FFFF"><span class="style19">
                  <label>
                  <input type="text" name="tby" value="<%=by%>" readonly="readonly" />
                  </label>
                </span></td>
              </tr>
			  
              <tr>
                <td width="188" height="35" bgcolor="#9eb8dd"><div align="center" class="style10 style16 style6 style15"><strong>Select Friend </strong></div></td>
                <td bgcolor="#00FFFF"><select name="rto" style="width:175px" >
                  <option>--select--</option>
				  
				  
				  
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
try{

	String uuu=null;
	String uname1 = (String)application.getAttribute("user");
	Statement stmt1=connection.createStatement();
	String strQuery1 = "select name from user where name!='"+uname1+"' and name!='"+by+"' ";
	ResultSet rs1 = stmt1.executeQuery(strQuery1);
	while(rs1.next())
	{
		String username = rs1.getString(1);
		
		Statement stmt2=connection.createStatement();
		String strQuery2 = "select rfrom,rto from friend_req where ((rfrom ='"+uname1+"' and rto='"+username+"') ||(rfrom ='"+username+"' and rto='"+uname1+"'))and status ='Friends' ";
		ResultSet rs2 = stmt2.executeQuery(strQuery2);
		if(rs2.next())
		{
		
			if(rs2.getString(1).equals(uname1))
			{
				uuu = rs2.getString(2);
			}
			else
			{
				uuu = rs2.getString(1);
			}
%>
                  <option> <%=uuu%></option>
<%
		}
	}
%>
                </select></td>
             </tr>
			 
<%
	  
connection.close();
}
         
catch(Exception e)
{
out.println(e.getMessage());
}
%>


              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td><label>
                  <input type="submit" name="Submit" value="Recommend" />
                </label></td>
              </tr>
</table>
</form>		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  <p>&nbsp;</p>
		  <p>&nbsp;</p>
		  <p>&nbsp;</p>
		  <p align="right"><a href="u_friends_posts.jsp" class="style14">Back</a></p>
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
