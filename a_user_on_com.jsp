<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View All User</title>
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
.style2 {
	font-family: "Times New Roman", Times, serif;
	font-size: 20px;
}
.style10 {font-size: 25px; color: #FFFFFF; font-weight: bold; }
.style11 {font-family: "Times New Roman", Times, serif}
.style12 {font-size: 20px}
.style13 {color: #FFFFFF}
.style14 {font-family: "Times New Roman", Times, serif; font-size: 20px; color: #FFFFFF; }
.style16 {font-family: "Times New Roman", Times, serif; font-size: 25px; }
.style18 {font-family: "Times New Roman", Times, serif; font-size: 25px; color: #FFFFFF; }
.style19 {color: #FF0000}
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
          <li class="active"><a href="a_login.jsp"><span>Admin</span></a></li>
          <li><a href="u_login.jsp"><span>User</span></a></li>
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
		  <p align="center" class="style10">View All Users Details Based on Community Blockchain </p>
		  <p>
		    <%@ include file="connect.jsp" %>
		    <%@ page import="java.io.*"%>
		    <%@ page import="java.util.*" %>
		    <%@ page import="java.util.Date" %>
		    <%@ page import="com.oreilly.servlet.*"%>
		    <%@ page import ="java.text.SimpleDateFormat" %>
		    <%@ page import ="javax.crypto.Cipher" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
		    <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>                         
            <%	  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=1,k=0;

 try 
	{		
         String query3="select distinct community from user "; 
         Statement st3=connection.createStatement();
         ResultSet rs3=st3.executeQuery(query3);
         while ( rs3.next() ) 
         {
		   s1=rs3.getString(1);
		   
		   
%>
<p>&nbsp;</p>
<span class="style18">Users Under Community Blockchain: <span class="style19"><%=s1%></span></span></p>
<table width="646" border="1.5" cellpadding="0" cellspacing="0" align="center">
        <tr bgcolor="#00FF33">
           <td width="35" height="66" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style6 style7 style11 style12 style13"><strong>Id  </strong></div></td>
		   <td width="90" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style6 style7 style11 style12 style13"><strong>User Image  </strong></div></td>
           <td width="115" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style6 style7 style11 style12 style13"><strong>User Name  </strong></div></td>
		   <td width="67" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style6 style7 style11 style12 style13"><strong>Status</strong></div></td>
           <td width="97" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style6 style7 style11 style12 style13"><strong> View User Details</strong></div></td>
		  
		</tr>
<%


		     
			                String query="select * from user "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() ) 
			                {
				                 i=rs.getInt(1);
								s2=rs.getString(2);//
								s4=rs.getString(4);//community
								s5=rs.getString(5);
								s6=rs.getString(6);//
								s7=rs.getString(7);//
								s8=rs.getString(8);
								s9=rs.getString(9);
								s10=rs.getString(10); // status
								
			   
			   
				 
				 if(s4.equalsIgnoreCase(s1))
				 {
				 
%>
<tr>
                      <td bgcolor="#CC0000"><div align="center" class="style5 style6 style7 style13 style11 style12"><%=j%></div></td>
                      <td bgcolor="#CC0000"><input  name="image" type="image" style="width:90px; height:90px;" src="u_Pic.jsp?id=<%=i%>" /></td>
					  <td bgcolor="#CC0000"><div align="center" class="style5 style6 style7 style13 style11 style12"><%=s2%></div></td>
					  <td bgcolor="#CC0000"><div align="center" class="style9 style5 style6 style7 style13 style11 style12"><%=s10%></div></td>
					  <td width="108" align="center" bgcolor="#CC0000"><a href="a_user_profile.jsp?user=<%=s2%>&type=<%="six"%>" class="style15 style13 style11 style12">Click here</a></td>
					  
					   
	      </tr>
		  
<%
 
				 
				 
				 
				j=j+1; }
			   }
			 
			 
%>

</table>
<%
			 
			j=1;}
		}
		
catch(Exception e)
{
out.print(e);
}   
		   		  
		                  
		  
%>		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  <p align="right">&nbsp;</p>
		  <p align="right">&nbsp;</p>
		  <p align="right">&nbsp;</p>
		  <p align="right">&nbsp;</p>
		  <p align="right"><a href="a_main.jsp" class="style2">Back</a></p>
	  </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Admin</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="a_main.jsp">Admin Main </a></li>
            <li><a href="a_login.jsp">Log Out</a></li>
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
