<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View User Posts</title>
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
.style14 {color: #FF0000}
.style15 {font-size: 20px}
.style16 {color: #FFFFFF}
.style17 {font-family: "Times New Roman", Times, serif; font-size: 20px; color: #FFFFFF; }
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
	  <% String user=request.getParameter("user"); %>
		  <p align="center" class="style10">View <span class="style14"><%=user%>'s</span> Posts </p>
		  
		  
		  
		  
<table width="853" border="1.5" cellpadding="0" cellspacing="0" align="center">
    <tr bgcolor="#00FF33">
       <td width="28" height="45"  bgcolor="#9eb8dd"><div align="center" class="style10 style9 style8 style3 style20 style27 style6 style7 style16 style19 style11 style15"><strong>Id  </strong></div></td>
       <td width="90" bgcolor="#9eb8dd"><div align="center" class="style10 style9 style8 style3 style20 style27 style6 style7 style16 style19 style11 style15"><strong>Post Image  </strong></div></td>
       <td width="115" bgcolor="#9eb8dd"><div align="center" class="style10 style9 style8 style3 style20 style27 style6 style7 style16 style19 style11 style15"><strong>Post Name  </strong></div></td>
       <td width="132" bgcolor="#9eb8dd"><div align="center" class="style10 style9 style8 style3 style20 style27 style6 style16 style7 style19 style11 style15"><strong>Description<br />(Decrypted) </strong></div></td>
       <td width="120" bgcolor="#9eb8dd"><div align="center" class="style10 style9 style8 style3 style20 style27 style6 style7 style16 style19 style11 style15"><strong> Uses</strong></div></td>
	   <td width="112" bgcolor="#9eb8dd"><div align="center" class="style10 style9 style8 style3 style20 style27 style6 style7 style16 style19 style11 style15"><strong>Upload Date</strong></div></td>
	   <td width="68" bgcolor="#9eb8dd"><div align="center" class="style10 style9 style8 style3 style20 style27 style6 style7 style16 style19 style11 style15"><strong>Rank</strong></div></td>
	   <td width="170" bgcolor="#9eb8dd"><div align="center" class="style10 style9 style8 style3 style20 style27 style4 style6 style7 style19 style11 style15"><strong>Ratings</strong></div></td>
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
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=1,k=0;

 try 
	{		
      	   
		   String query2="select * from posts where user='"+user+"' "; 
           Statement st2=connection.createStatement();
           ResultSet rs2=st2.executeQuery(query2);
	       if ( rs2.next()!=true )
	       {
%>
<p align="center" class="style18">You Have Not Created Any Posts</p>
<%
		   }
		   
		   
		   String query="select * from posts where user='"+user+"' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);//user
		s3=rs.getString(3);//pn
		s4=rs.getString(4);//task
		s5=rs.getString(5);//ip
		s6=rs.getString(6);//dt
		s7=rs.getString(7);//ip
		s8=rs.getString(8);//dt
		
		        String keys="q2e34rrfgfgfgg2a";
      			byte[] keyValue = keys.getBytes();
      			Key key = new SecretKeySpec(keyValue, "AES");
      			Cipher c = Cipher.getInstance("AES");
      			c.init(Cipher.ENCRYPT_MODE, key);
      			
				String decs4 = new String(Base64.decode(s4.getBytes()));
		
		
%>


                    
                    <tr>
                      <td bgcolor="#CC0000"><div align="center" class="style20 style11 style15 style16"><%=j%></div></td>
                      <td bgcolor="#CC0000"><input  name="image" type="image" class="style19 " style="width:90px; height:90px;" src="post_Pic.jsp?id=<%=i%>" /></td>
					  <td bgcolor="#CC0000"><div align="center" class="style20 style11 style15 style16"><%=s2%></div></td>
					  <td bgcolor="#CC0000"><span class="style20 style19 style21 style11 style15 style16">
					    <textarea name="text" cols="10" rows="5" readonly><%= decs4 %></textarea>
				      </span></td>
					  <td bgcolor="#CC0000"><span class="style20 style19 style21 style11 style15 style16">
					    <textarea name="text" cols="10" rows="5" readonly><%= s5 %></textarea>
				      </span></td>
					  <td bgcolor="#CC0000"><div align="center" class="style20 style11 style15 style16"><%=s6%></div></td>
					  <td bgcolor="#CC0000"><div align="center" class="style20 style11 style15 style16"><%=s7%></div></td>
					  <td bgcolor="#CC0000">    
				  
			            
			            <span class="style17">
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
        <%
		
	  j=j+1;}
	  
	  
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
        </table>		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  <p align="right">&nbsp;</p>
		  <p align="right">&nbsp;</p>
		  <p align="right">&nbsp;</p>
		  <p align="right">&nbsp;</p>
		  <p align="right"><a href="a_user_mul_sources.jsp" class="style2">Back</a></p>
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
