<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Searched Friend Details</title>
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
.style15 {font-family: "Times New Roman", Times, serif}
.style17 {font-size: 25px}
.style19 {color: #FFFFFF}
.style20 {font-size: 20px}
.style21 {font-family: "Times New Roman", Times, serif; font-size: 20px; color: #FFFFFF; }
.style22 {color: #FF0000}
.style23 {color: #00FF00}
.style24 {color: #0000FF}
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
	    <p align="center" class="style10"> Searched Friend Details </p>
	    <p>&nbsp;</p>
		
		
 
		  
		  
<table width="515" border="1.5" align="center"  cellpadding="0" cellspacing="0">
		  
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
    String friend=request.getParameter("user");
	String user=(String)application.getAttribute("user");

try
{
                    SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
					SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
					Date now = new Date();
				    String strDate = sdfDate.format(now);
					String strTime = sdfTime.format(now);
					String dt = strDate + "   " + strTime;
					
					String sql="select * from user where name='"+friend+"' ";
					Statement st=connection.createStatement();
					ResultSet rs=st.executeQuery(sql);
					if(rs.next())
					{
										
                                                i = rs.getInt(1);
                                                s2 = rs.getString(2);//uploader(seller)
                                                s3 = rs.getString(3);//pname
                                                s4 = rs.getString(4);//com
                                                s5 = rs.getString(5);//pman
                                                s6 = rs.getString(6);//price
                                                s7 = rs.getString(7);//uses
												s8 = rs.getString(8);//uploader
												s9 = rs.getString(9);//desc
												s10 = rs.getString(10);//img
												
				
				
				                           
										
										
										
										%>
										
	
										
		<tr>
		  <td  width="139" height="40" valign="middle" bgcolor="#9eb8dd" style="color: #2c83b0;"><div align="left" class="style6 style5 style15 style3 style9 style11 style20 style19" style="margin-left:20px;"><strong>User Image</strong></div></td>
          <td width="116" rowspan="1" bgcolor="#CC0000" ><div class="style9 style15 style20" style="margin:10px 13px 10px 13px;; color: #FFFFFF;">
		  <input  name="image" type="image" src="u_Pic.jsp?id=<%=i%>" style="width:90px; height:90px;">
          </div></td>
        </tr>
		
        <tr>
          <td  width="139" height="40" valign="middle" bgcolor="#9eb8dd" style="color: #2c83b0;"><div align="left" class="style6 style5 style15 style3 style9 style11 style20 style19" style="margin-left:20px;"><strong>User Name</strong></div></td>
          <td  width="252" height="40" valign="middle" bgcolor="#CC0000" style="color:#000000;"><div align="left" class="style23 style10 style6 style9 style18 style15 style20" style="margin-left:20px;; color: #FFFFFF;">
            <%out.println(s2);%>
          </div></td>
        </tr>
		
		<tr>
          <td  width="139" height="40" valign="middle" bgcolor="#9eb8dd" style="color: #2c83b0;"><div align="left" class="style6 style5 style15 style3 style9 style11 style20 style19" style="margin-left:20px;"><strong>Community</strong></div></td>
          <td  width="252" height="40" valign="middle" bgcolor="#CC0000" style="color:#000000;"><div align="left" class="style23 style10 style6 style9 style18 style15 style20" style="margin-left:20px;; color: #FFFFFF;">
            <%out.println(s4);%>
          </div></td>
        </tr>
			
        
		
        <tr>
          <td  width="139" height="40" align="left" valign="middle" bgcolor="#9eb8dd" style="color: #2c83b0;"><div align="left" class="style6 style5 style15 style3 style9 style11 style20 style19" style="margin-left:20px;"><strong>Address</strong></div></td>
          <td  width="252" height="40" valign="middle" bgcolor="#CC0000"><div align="left" class="style23 style10 style6 style9 style18 style15 style20" style="margin-left:20px;; color: #FFFFFF;">
            <textarea name="textarea" cols="25" rows="7" readonly><%= s9%></textarea>
          </div></td>
        </tr>
		
		<tr>
          <td  width="139" height="40" valign="middle" bgcolor="#9eb8dd" style="color: #2c83b0;"><div align="left" class="style6 style5 style15 style3 style9 style11 style20 style19" style="margin-left:20px;"><strong> E-Mail </strong></div></td>
          <td  width="252" height="40" valign="middle" bgcolor="#CC0000" style="color:#000000;"><div align="left" class="style23 style10 style6 style9 style18 style15 style20" style="margin-left:20px;; color: #FFFFFF;">
            <%out.println(s5);%>
          </div></td>
        </tr>
		
		<tr>
          <td  width="139" height="40" valign="middle" bgcolor="#9eb8dd" style="color: #2c83b0;"><div align="left" class="style6 style5 style15 style3 style9 style11 style20 style19" style="margin-left:20px;"><strong> Mobile </strong></div></td>
          <td  width="252" height="40" valign="middle" bgcolor="#CC0000" style="color:#000000;"><div align="left" class="style23 style10 style6 style9 style18 style15 style20" style="margin-left:20px;; color: #FFFFFF;">
            <%out.println(s6);%>
          </div></td>
        </tr>
		
		<tr>
          <td  width="139" height="40" valign="middle" bgcolor="#9eb8dd" style="color: #2c83b0;"><div align="left" class="style6 style5 style15 style3 style9 style11 style20 style19" style="margin-left:20px;"><strong>Date of Birth</strong></div></td>
          <td  width="252" height="40" valign="middle" bgcolor="#CC0000" style="color:#000000;"><div align="left" class="style23 style10 style6 style9 style18 style15 style20" style="margin-left:20px;; color: #FFFFFF;"><span class="style23 style10 style6 style9 style18 style15 style20" style="margin-left:20px;; color: #FFFFFF;">
            <%out.println(s7);%>
          </span></div></td>
        </tr>
		
	   <tr>
        <td  width="139" height="40" valign="middle" bgcolor="#9eb8dd" style="color: #2c83b0;"><div align="left" class="style6 style5 style15 style3 style9 style11 style20 style19" style="margin-left:20px;"><strong> Gender </strong></div></td>
        <td width="252" height="40" valign="middle" bgcolor="#CC0000" style="color:#000000;"><div align="left" class="style23 style10 style6 style9 style18 style15 style20" style="margin-left:20px;; color: #FFFFFF;"><span class="style23 style10 style6 style9 style18 style15 style20" style="margin-left:20px;; color: #FFFFFF;">
            <%out.println(s8);%>
            </span></div></td>
       </tr>
	   
	  
	   <tr>
        <td  width="139" height="40" valign="middle" bgcolor="#9eb8dd" style="color: #2c83b0;"><div align="left" class="style6 style5 style15 style3 style9 style11 style20 style19" style="margin-left:20px;"><strong> Status </strong></div></td>
        <td width="252" height="40" valign="middle" bgcolor="#CC0000" style="color:#000000;"><div align="left" class="style23 style10 style6 style9 style18 style15 style20" style="margin-left:20px;; color: #FFFFFF;">
            <%out.println(s10);%>
          </div></td>
       </tr>
	   
	   
		
	<%
	  
	                String sql9="select * from friend_req where (rfrom='"+user+"' and rto='"+friend+"') || (rfrom='"+friend+"' and rto='"+user+"') ";
					Statement st9=connection.createStatement();
					ResultSet rs9=st9.executeQuery(sql9);
					if(rs9.next())
					{
					 s4 = rs9.getString(4);//satatus
					 if(s4.equalsIgnoreCase("Requested"))
						{
		   %>
		    
        <tr>
		  <td height="35"></td>
		  <td align="center" bgcolor="#00FFFF"><div class="style15 style3 style17 style22"> Friend Request Sent(Wait..!)</div></td>
		</tr>
		
            <%
						}
					else if(s4.equalsIgnoreCase("Friends"))
						{
			%> 
            <tr>
		       <td height="35"></td>
	          <td align="center" bgcolor="#00FFFF"><div class="style15 style3 style17 style24"> You Both Are Friends</div></td>
		  </tr>
            <%
						}
					}
					else
					{
	  
	%>
		
		<tr>
		  <td height="35"></td>
		  <td align="center" bgcolor="#993300"><a href="u_send_req.jsp?friend=<%=s2%>&com=<%=s4%>" class="style21">Send Friend Request</a></td>
		</tr>
<%
                     }
					 		
}
}
catch(Exception e) 
{
out.print(e);
}

%>
		</table>		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
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
