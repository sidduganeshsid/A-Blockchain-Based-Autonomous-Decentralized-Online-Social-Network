<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>My Friends</title>
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
.style16 {font-size: 20px}
.style19 {font-family: "Times New Roman", Times, serif; font-size: 20px; color: #FFFFFF; }
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
	    <p align="center" class="style10">View My Friends </p>
	    <p>&nbsp;</p>
		
		
  
		  
<table width="641" border="1.5" cellpadding="0" cellspacing="0" align="left">
            <tr bgcolor="#00FF33">
              <td width="55" height="44" bgcolor="#9eb8dd"><div align="center" class="style11 style10 style9 style8 style3 style20 style27 style4 style6 style15 style16"><strong>Id  </strong></div></td>
              <td width="132" bgcolor="#9eb8dd"><div align="center" class="style11 style10 style9 style8 style3 style20 style27 style4 style6 style15 style16"><strong>Friend Name  </strong></div></td>
			  <td width="163" bgcolor="#9eb8dd"><div align="center" class="style11 style10 style9 style8 style3 style20 style27 style4 style6 style15 style16"><strong>Requested Date  </strong></div></td>
              <td width="149" bgcolor="#9eb8dd"><div align="center" class="style11 style10 style9 style8 style3 style20 style27 style4 style6 style15 style16"><strong>Response Date </strong></div></td>
		      <td width="142" bgcolor="#9eb8dd"><div align="center" class="style11 style10 style9 style8 style3 style20 style27 style4 style6 style15 style16"><strong>Status</strong></div></td>
   		    </tr>

<%@ include file="connect.jsp" %>                      
<%	  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=1,k=0;
	String user=(String)application.getAttribute("user");

 try 
	{		
      	   String query="select * from friend_req where status='Friends' and (rfrom='"+user+"' || rto='"+user+"') "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);//rfrom
		s3=rs.getString(3);//rto
		s4=rs.getString(4);//task
		s5=rs.getString(5);//ip
		s6=rs.getString(6);//dt
		
		
		%>
                    
                    <tr>
                      <td height="53" bgcolor="#CC0000"><div align="center" class="style19"><%=j%></div></td>
					 <%
					 
					 if(s2.equalsIgnoreCase(user))
					 {
					 %><td bgcolor="#CC0000"><div align="center" class="style19"><a href="u_user_profile.jsp?user=<%=s3%>&type=<%="two"%>"><%=s3%></a></div></td>
					 <%
					 }
					 if(s3.equalsIgnoreCase(user))
					 {
					 %><td bgcolor="#CC0000"><div align="center" class="style19"><a href="u_user_profile.jsp?user=<%=s2%>&type=<%="two"%>"><%=s2%></a></div></td>
					 <%
					 }
					 
					 %> 
					 
					  <td bgcolor="#CC0000"><div align="center" class="style19"><%=s5%></div></td>
					  <td bgcolor="#CC0000"><div align="center" class="style19"><%=s6%></div></td>
					  <td bgcolor="#CC0000"><div align="center" class="style19"><%=s4%></div></td>
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
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  <p>&nbsp;</p>
		  <p>&nbsp;</p>
		  <p>&nbsp;</p>
		  <p align="right">&nbsp;</p>
		  <p align="right">&nbsp;</p>
		  <p align="right">&nbsp;</p>
		  <p align="right">&nbsp;</p>
		  <p align="right">&nbsp;</p>
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
