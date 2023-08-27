<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Friends Post</title>
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
.style16 {font-size: 20px}
.style19 {font-family: "Times New Roman", Times, serif}
.style20 {font-family: "Times New Roman", Times, serif; font-size: 20px; color: #FFFFFF; }
.style21 {color: #FFFFFF}
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
	    <p align="center" class="style10">View My Friends <strong>Tweet</strong>s</p>
	    <p>&nbsp;</p>
		
		
		  
<table width="700" border="1.5" cellpadding="0" cellspacing="0" align="left">
    <tr bgcolor="#00FF33">
       <td width="47" height="45"  bgcolor="#9eb8dd"><div align="center" class="style10 style9 style8 style3 style20 style27 style6 style7 style16 style19"><strong>Id  </strong></div></td>
       <td width="104" bgcolor="#9eb8dd"><div align="center" class="style10 style9 style8 style3 style20 style27 style6 style7 style16 style19"><strong>Tweet Image  </strong></div></td>
       <td width="195" bgcolor="#9eb8dd"><div align="center" class="style10 style9 style8 style3 style20 style27 style6 style7 style16 style19"><strong>Tweet Name  </strong></div></td>
       <td width="226" bgcolor="#9eb8dd"><div align="center" class="style10 style9 style8 style3 style20 style27 style6 style7 style16 style19"><strong>Uploader(Friend)</strong></div></td>
	   <td width="213" bgcolor="#9eb8dd"><div align="center" class="style10 style9 style8 style3 style20 style27 style6 style16 style7 style19"><strong>View Details </strong></div></td>
       
    </tr>		  
		  
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
			  
	String user=(String)application.getAttribute("user");
    
	String s1,s2,s3,s4,s5,s6,s7,s8,rto;
	int i=0,j=0,m=0,k=1,count=0;
	
	try 
	{
	
	ArrayList al=new ArrayList();
	ArrayList al1=new ArrayList();
	String sql="select rto from friend_req where(rfrom='"+user+"' and status='Friends')";
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(sql);
	while(rs.next())
	{
		rto=rs.getString(1);
		al1.add(rto);
	}
	String sql1="select rfrom from friend_req where(rto='"+user+"' and status='Friends')";
	Statement st1=connection.createStatement();
	ResultSet rs1=st1.executeQuery(sql1);
	while(rs1.next())
	{
		rto=rs1.getString(1);
		al1.add(rto);
	}
	
	for(j=0;j<al1.size();j++)
	{

	String sql2="select * from posts where user='"+al1.get(j)+"'"; 
	Statement st2=connection.createStatement();
	ResultSet rs2=st2.executeQuery(sql2);
	while(rs2.next())
	{
		i=rs2.getInt(1);
		s2=rs2.getString(2);
		s3=rs2.getString(3);
		s4=rs2.getString(4);
		s5=rs2.getString(5);
		s6=rs2.getString(6);
		s7=rs2.getString(7);//rank
		s8=rs2.getString(8);
		al.add(s2);
		
		
		
		
		        String keys="q2e34rrfgfgfgg2a";
      			byte[] keyValue = keys.getBytes();
      			Key key = new SecretKeySpec(keyValue, "AES");
      			Cipher c = Cipher.getInstance("AES");
      			c.init(Cipher.ENCRYPT_MODE, key);
      			
				String decs4 = new String(Base64.decode(s4.getBytes()));
				
				int UpdateRank=Integer.parseInt(s7)+1;
		
%>


                    
                    <tr>
                      <td bgcolor="#CC0000"><div align="center" class="style20"><%=k%></div></td>
                      <td bgcolor="#CC0000" align="center"><input  name="image" type="image" class="style19" style="width:90px; height:90px;" src="post_Pic.jsp?id=<%=i%>" /></td>
					  <td bgcolor="#CC0000"><div align="center" class="style20"><%=s2%></div></td>
					  <td bgcolor="#CC0000"><div align="center" class="style20"><a href="u_user_profile.jsp?user=<%=s8%>&type=<%="three"%>"><%=s8%></a></div></td>
					  <td bgcolor="#CC0000" align="center"><a href="u_post_details.jsp?pname=<%=s2%>&rank=<%=UpdateRank%>" class="style14 style21">Click Here</a></td>
					  
		  </tr>
        <%
		
	  k=k+1;}}
	  
	  
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
        </table>		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
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
