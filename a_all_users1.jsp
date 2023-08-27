<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View All Users</title>
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
.style14 {color: #FF0000}
.style15 {font-family: "Times New Roman", Times, serif; font-size: 20px; color: #FF0000; }
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
	  
		  <p align="center" class="style10">View <span class="style14"><%=user%>'s</span> Moved Places in GMap </p>

<%@ include file="connect.jsp" %>		  
<%		  
try{
		   String query="select * from movements where username='"+user+"' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);	
		   if(rs.next())
		   {
		   %> <iframe src="a_all_users2.jsp?user=<%=user%>" style="border:3px;" width="650" height="600"></iframe> <%
		   }
		   else
		   {
		   %><p>&nbsp;</p>
		    <p align="center" class="style15">User Has Not Taken Any Movement Yet </p>
<%
		   }
   }
catch(Exception e)
{
out.print(e);
}	  
		  
		  
%>		  
		  
		  
	  		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  <p align="right">&nbsp;</p>
		  <p align="right">&nbsp;</p>
		  <p align="right"><a href="a_all_users.jsp" class="style2">Back</a></p>
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
