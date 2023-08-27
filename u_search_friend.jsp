<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>search Friend</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script type="text/javascript" language="javascript" >
function valid()
{
var na3=document.s.keyword.value;
if(na3=="")

{
alert("Please Enter Friend Name");
document.s.keyword.focus();
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
.style17 {font-size: 25px}
.style19 {color: #FFFFFF}
.style20 {font-size: 20px}
.style21 {font-family: "Times New Roman", Times, serif; font-size: 20px; color: #FFFFFF; }
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
	    <p align="center" class="style10"> Search Friend </p>
	    <p>&nbsp;</p>
		
		
<form name="s" action="u_search_friend.jsp" method="post" onSubmit="return valid()"  ons target="_top">
           
		    <p align="center" class="style13"><span class="style17 style15">Enter Name :</span>
          <input type="text" name="keyword" /></p>
            <p align="center">
			<input class="art-button" name="submit" type="submit" value="Search" /></p>
            
</form> 
		  
		  
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

try
{
								String s1="",keyword="",s2="",s3="",s4,s5="",s6="",s7,s8,s9,s10,s11,s12,s13,s14;
								String strDate="",strTime="",dt="";
								int rank=0,i=0;
								
								String user=(String)application.getAttribute("user");
								String com=(String)application.getAttribute("com");
							    String	input= request.getParameter("keyword");	
								keyword = input.toLowerCase();
													
								String sql2="select * from user where name!='"+user+"' ";
								Statement st2=connection.createStatement();
								ResultSet rs2=st2.executeQuery(sql2);
								while(rs2.next())
										{
									  
										   
										   s2 = rs2.getString(2).toLowerCase();//name
										   s3 = rs2.getString(3);//
										   s4 = rs2.getString(4);//com
										   s5 = rs2.getString(5);//
										   s6 = rs2.getString(6);//
										   s7 = rs2.getString(7);//
										   s9 = rs2.getString(9);//
										  
										   
										   
						                       /* String keys="q2e34rrfgfgfgg2a";
												byte[] keyValue1 = keys.getBytes();
												Key key1 = new SecretKeySpec(keyValue1, "AES");
												Cipher c1 = Cipher.getInstance("AES");
												c1.init(Cipher.DECRYPT_MODE, key1);
												
												String decryptedValues3 = new String(Base64.decode(s3.getBytes())).toLowerCase();//desc
												*/
												
									   
					
							if (s2.contains(keyword))   // searching on uname
										{
										
										//int UpdateRank=Integer.parseInt(s9)+1;
										
										
										
									%>
									
                </P>
 </p>
         <table width="273" align="center">
              <tr>
	            <td width="134" height="34" bgcolor="#9eb8dd"> <div align="left" class="style6 style5 style3 style25 style15 style19 style20">User Name : </div></td>
			     <td width="127" bgcolor="#CC0000"> <span class="style21"><%=s2%></span> </td>
              </tr>
			   
			   <tr>
		         <td width="134" height="35" bgcolor="#9eb8dd"> <div align="left" class="style6 style5 style3 style25 style15 style20 style19"> Community :</div></td>
			     <td width="127" bgcolor="#CC0000"><span class="style21"><%=s4%></span> </td>
			   </tr>
		</table>
                <p>
            <div align="center" class="style5 style14"><span class="style11">  <a href="u_search_friend1.jsp?user=<%=s2%>">View Details </a></span></div>
                </p>
                <p></p>
				<div>
				  <div align="center">--------------------------------------------------------</div>
				</div>
				 <p></p>
				<%
				
						  	     
								
								
									   
									    }
							           }
						 
						
					}
					
					catch(Exception e)
					{						  
					    e.printStackTrace();
						//out.println(e.getMessage());
					}
%>		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  <p>&nbsp;</p>
		  <p>&nbsp;</p>
		  <p>&nbsp;</p>
		  <p align="right"><a href="u_main.jsp" class="style14">Back</a></p>
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
