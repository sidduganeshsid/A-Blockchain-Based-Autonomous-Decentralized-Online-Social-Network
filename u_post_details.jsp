<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Post Details</title>
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
	    <p align="center" class="style10">Post Details </p>
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
    String title=request.getParameter("pname");
	String rk=request.getParameter("rank");

try
{
                    SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
					SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
					Date now = new Date();
				    String strDate = sdfDate.format(now);
					String strTime = sdfTime.format(now);
					String dt = strDate + "   " + strTime;
					
					String sql2="update posts set rank='"+rk+"' where title='"+title+"'";
				    Statement st2=connection.createStatement();
				    st2.executeUpdate(sql2);
					
					String sql="select * from posts where title='"+title+"' ";
					Statement st=connection.createStatement();
					ResultSet rs2=st.executeQuery(sql);
					if(rs2.next())
					{
										
                                                i=rs2.getInt(1);
                                                s2=rs2.getString(2);
                                                s3=rs2.getString(3);
                                                s4=rs2.getString(4);
                                                s5=rs2.getString(5);
                                                s6=rs2.getString(6);
                                                s7=rs2.getString(7);
                                                s8=rs2.getString(8);
		
                                                String keys="q2e34rrfgfgfgg2a";
                                                byte[] keyValue = keys.getBytes();
                                                Key key = new SecretKeySpec(keyValue, "AES");
                                                Cipher c = Cipher.getInstance("AES");
                                                c.init(Cipher.ENCRYPT_MODE, key);
                                                
                                                String decs4 = new String(Base64.decode(s4.getBytes()));
												
										
										
										
										%>
										
	
										
		<tr>
		  <td  width="155" height="40" valign="middle" bgcolor="#9eb8dd" style="color: #2c83b0;"><div align="left" class="style14 style9 style6 style5 style15 style16 style11 style19" style="margin-left:20px;"><strong>Post Image</strong></div></td>
          <td width="354" rowspan="1" bgcolor="#CC0000" ><div class="style7 style15 style21" style="margin:10px 13px 10px 13px;">
		    <input  name="image" type="image" src="post_Pic.jsp?id=<%=i%>" style="width:90px; height:90px;">
          </div></td>
        </tr>
		
        <tr>
          <td  width="155" height="40" valign="middle" bgcolor="#9eb8dd" style="color: #2c83b0;"><div align="left" class="style14 style9 style6 style5 style15 style16 style11 style19" style="margin-left:20px;"><strong>Post Title </strong></div></td>
          <td  width="354" height="40" valign="middle" bgcolor="#CC0000" style="color:#000000;"><div align="left" class="style17 style16 style6 style9 style23 style15 style21" style="margin-left:20px;; color: #FFFFFF;">
            <%out.println(s2);%>
          </div></td>
        </tr>
		
		<tr>
          <td  width="155" height="40" valign="middle" bgcolor="#9eb8dd" style="color: #2c83b0;"><div align="left" class="style14 style9 style6 style5 style15 style16 style11 style19" style="margin-left:20px;"><strong>Post Uploader <br />
          </strong></div></td>
          <td  width="354" height="40" valign="middle" bgcolor="#CC0000" style="color:#000000;"><div align="left" class="style17 style16 style6 style9 style23 style15 style21" style="margin-left:20px;; color: #FFFFFF;">
            <%out.println(s8);%>
          </div></td>
        </tr>
		
		
			
        <tr>
          <td  width="155" height="40"  valign="middle" bgcolor="#9eb8dd" style="color: #2c83b0;"><div align="left" class="style14 style9 style6 style5 style15 style16 style11 style19" style="margin-left:20px;"><strong>Description<br />
          (Decrypted)</strong></div></td>
          <td  width="354" height="40" valign="middle" bgcolor="#CC0000"><div align="left" class="style17 style16 style4 style6 style9 style23 style15 style21" style="margin-left:20px;; color: #FFFFFF;">
            <textarea name="text" cols="25" rows="7" readonly><%= decs4 %></textarea>
          </div></td>
        </tr>
		
        <tr>
          <td  width="155" height="40" align="left" valign="middle" bgcolor="#9eb8dd" style="color: #2c83b0;"><div align="left" class="style14 style9 style6 style5 style15 style16 style11 style19" style="margin-left:20px;"><strong>Uses</strong></div></td>
          <td  width="354" height="40" valign="middle" bgcolor="#CC0000"><div align="left" class="style17 style16 style4 style6 style9 style23 style15 style21" style="margin-left:20px;; color: #FFFFFF;">
            <textarea name="textarea" cols="25" rows="7" readonly><%= s5 %></textarea>
          </div></td>
        </tr>
		
		
		
		<tr>
          <td  width="155" height="40" valign="middle" bgcolor="#9eb8dd" style="color: #2c83b0;"><div align="left" class="style14 style9 style6 style5 style15 style16 style11 style19" style="margin-left:20px;"><strong> Upload Date </strong></div></td>
          <td  width="354" height="40" valign="middle" bgcolor="#CC0000" style="color:#000000;"><div align="left" class="style17 style16 style6 style9 style23 style15 style21" style="margin-left:20px;; color: #FFFFFF;">
            <%out.println(s6);%>
          </div></td>
        </tr>
		
		<tr>
          <td  width="155" height="40" valign="middle" bgcolor="#9eb8dd" style="color: #2c83b0;"><div align="left" class="style14 style9 style6 style5 style15 style16 style11 style19" style="margin-left:20px;"><strong> Rank</strong></div></td>
          <td  width="354" height="40" valign="middle" bgcolor="#CC0000" style="color:#000000;"><div align="left" class="style17 style16 style6 style9 style23 style21 style15" style="margin-left:20px;; color: #FFFFFF;">
            <%out.println(s7);%>
          </div></td>
        </tr>
		
		<tr>
          <td  width="155" height="40" valign="middle" bgcolor="#9eb8dd" style="color: #2c83b0;"><div align="left" class="style14 style9 style6 style5 style15 style16 style11 style19" style="margin-left:20px;"><strong> Ratings </strong></div></td>
          <td bgcolor="#CC0000"><span class="style8 style15 style21">
                <%
		int rank=Integer.parseInt(s7);
					 
    if(rank==3)
    {
    	%>
                <input  name="image2" type="image" src="Gallery/1.png" width="30" height="30" />
                <%
    }
    if(rank>3 && rank<=6)
    {
    	%>
                <input  name="image2" type="image" src="Gallery/2.png" width="80" height="30" />
                <%
    }
    if(rank>6 && rank<=9)
    {
    	%>
                <input  name="image2" type="image" src="Gallery/3.png" width="100" height="30" />
                <%
    }
    if(rank>9 && rank<=12)
    {
    	%>
                <input  name="image2" type="image" src="Gallery/4.png" width="120" height="30" />
                <%
    }
    if(rank>12 && rank<=15)
    {
    	%>
                <input  name="image2" type="image" src="Gallery/5.png" width="140" height="30" />
                <%
    }
    if(rank>15)
    {
    	%>
                <input  name="image2" type="image" src="Gallery/6.png" width="170" height="30" />
                <%
    }
    %>
              </span></td>
        </tr>
		<tr>
		<td height="42"></td>
		<td bgcolor="#00FFFF" align="center"><span class="style14"><a href="u_recommend_friend.jsp?pname=<%=s2%>&powner=<%=s8%>"> Recommend to Friend</a></span></td>
		</tr>
		</table>		  
  
<%

       }
	  
}
				
		
				
					
					catch(Exception e)
					{						  
						out.println(e.getMessage());
					}
					





%>
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
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
