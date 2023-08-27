<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>My Profile</title>
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
.style18 {font-size: 20px}
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
	    <p align="center" class="style10">My Profile </p>
	    <p>&nbsp;</p>
		
		
<table width="624" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%
						
						String user=(String)application.getAttribute("user");
						
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14;
						int i=0;
						try 
						{
						   	String query="select * from user where name='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s2=rs.getString(2);//name
								s4=rs.getString(4);//email
								s5=rs.getString(5);
								s6=rs.getString(6);
								s7=rs.getString(7);//dob
								s8=rs.getString(8);
								s9=rs.getString(9);
								s10=rs.getString(10);//status
								
								
								
								
								
								
%>
        
		
		<tr>
          <td width="230" rowspan="6" ><div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
              <input  name="image" type="image" src="u_Pic.jsp?id=<%=i%>" style="width:200px; height:200px;">
          </a></div></td>
        </tr>
		
        <tr>
          <td  width="157" height="40" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style20 style5 style6 style3 style7 style11 style15 style18" style="margin-left:20px;; color: #FFFFFF;">Name</div></td>
          <td  width="229" height="40" valign="middle" bgcolor="#CC3300" style="color:#000000;"><div align="left" class="style23 style6 style13 style12 style7 style15 style18" style="margin-left:20px;; color: #CCCCCC;; color: #FFFFFF;">
            <div align="center">
              <%out.println(s2);%>
              </div>
          </div></td>
        </tr>
		<tr>
          <td  width="157" height="40" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style20 style5 style6 style3 style7 style11 style15 style18" style="margin-left:20px;; color: #FFFFFF;">Community</div></td>
          <td  width="229" height="40" valign="middle" bgcolor="#CC3300"><div align="left" class="style23 style6 style13 style12 style7 style15 style18" style="margin-left:20px;; color: #CCCCCC;; color: #FFFFFF;">
            <div align="center">
              <%out.println(s4);%>
              </div>
          </div></td>
        </tr>
        <tr>
          <td  width="157" height="40" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style20 style5 style6 style3 style7 style11 style15 style18" style="margin-left:20px;; color: #FFFFFF;">E-Mail</div></td>
          <td  width="229" height="40" valign="middle" bgcolor="#CC3300"><div align="left" class="style23 style6 style13 style12 style7 style15 style18" style="margin-left:20px;; color: #CCCCCC;; color: #FFFFFF;">
            <div align="center">
              <%out.println(s5);%>
              </div>
          </div></td>
        </tr>
        <tr>
          <td  width="157" height="40" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style20 style5 style6 style3 style7 style11 style15 style18" style="margin-left:20px;; color: #FFFFFF;">Mobile</div></td>
          <td  width="229" height="40" align="left" valign="middle" bgcolor="#CC3300"><div align="left" class="style23 style6 style13 style12 style7 style15 style18" style="margin-left:20px;; color: #CCCCCC;; color: #FFFFFF;">
            <div align="center">
              <%out.println(s6);%>
              </div>
          </div></td>
        </tr>
        <tr>
          <td  width="157" height="40" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style20 style5 style6 style3 style7 style11 style15 style18" style="margin-left:20px;; color: #FFFFFF;">Address</div></td>
          <td  width="229" height="40" align="left" valign="middle" bgcolor="#CC3300"><div align="left" class="style23 style6 style13 style12 style7 style15 style18" style="margin-left:20px;; color: #CCCCCC;; color: #FFFFFF;">
            <div align="center"><span class="style23 style6 style13 style12 style7 style15 style18" style="margin-left:20px;; color: #CCCCCC;; color: #FFFFFF;">
              <%out.println(s9);%>
            </span></div>
          </div></td>
        </tr>
         <tr>
		  <td></td>
          <td  width="157" height="40" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style20 style5 style6 style3 style7 style11 style15 style18" style="margin-left:20px;; color: #FFFFFF;">DOB</div></td>
          <td  width="229" height="40" align="left" valign="middle" bgcolor="#CC3300"><div align="left" class="style23 style6 style13 style12 style7 style15 style18" style="margin-left:20px;; color: #CCCCCC;; color: #FFFFFF;">
            <div align="center"><span class="style23 style6 style13 style12 style7 style15 style18" style="margin-left:20px;; color: #CCCCCC;; color: #FFFFFF;"><span class="style23 style6 style13 style12 style7 style15 style18" style="margin-left:20px;; color: #CCCCCC;; color: #FFFFFF;">
              <%out.println(s7);%>
            </span></span></div>
          </div></td>
        </tr>
		<tr>
		  <td></td>
          <td  width="157" height="40" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style20 style5 style6 style3 style7 style11 style15 style18" style="margin-left:20px;; color: #FFFFFF;">Gender</div></td>
          <td  width="229" height="40" align="left" valign="middle" bgcolor="#CC3300"><div align="left" class="style23 style6 style13 style12 style7 style15 style18" style="margin-left:20px;; color: #CCCCCC;; color: #FFFFFF;">
            <div align="center"><span class="style23 style6 style13 style12 style7 style15 style18" style="margin-left:20px;; color: #CCCCCC;; color: #FFFFFF;">
              <%out.println(s8);%>
              </span></div>
          </div></td>
        </tr>
		<tr>
		  <td></td>
          <td  width="157" height="40" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style20 style5 style6 style3 style7 style11 style15 style18" style="margin-left:20px;; color: #FFFFFF;">Status</div></td>
          <td  width="229" height="40" align="left" valign="middle" bgcolor="#CC3300"><div align="left" class="style23 style6 style13 style12 style7 style15 style18" style="margin-left:20px;; color: #CCCCCC;; color: #FFFFFF;">
            <div align="center">
              <%out.println(s10);%>
              </div>
          </div></td>
        </tr>
	
		
        <%
						}
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
