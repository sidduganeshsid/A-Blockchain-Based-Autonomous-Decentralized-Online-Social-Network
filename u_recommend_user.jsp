<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Recommend Community</title>
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
var na3=document.s.tcomment.value;
if(na3=="")

{
alert("Please Write Description");
document.s.tcomment.focus();
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
.style20 {font-size: 20px}
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
	    <p align="center" class="style10"> Recommend Community </p>
	    <p>&nbsp;</p>
		
<%
    String user=request.getParameter("user");
	String com=(String)application.getAttribute("com");
%>		
 
<form name="s" action="u_recommend_user1.jsp" method="post" id="form1" onSubmit="return valid()"  ons target="_top">		  
<table width="428" border="0" align="center">
              <tr>
                <td width="215" height="35" bgcolor="#9eb8dd"><div align="center" class="style10 style6 style15 style16 style20"><strong>Recommending to </strong></div></td>
                <td width="203" bgcolor="#00FFFF"><span class="style19">
                  <label>
                  <input type="text" name="user" value="<%=user%>" readonly="readonly" />
                  </label>
                </span></td>
              </tr>
			  
			  <tr>
                <td width="215" height="35" bgcolor="#9eb8dd"><div align="center" class="style10 style6 style15 style16 style20"><strong>Recommended Community</strong></div></td>
                <td width="203" bgcolor="#00FFFF"><span class="style19">
                  <label>
                  <input type="text" name="com" value="<%=com%>" readonly="readonly" />
                  </label>
                </span></td>
              </tr>
			  
              <tr>
                <td width="215" height="35" bgcolor="#9eb8dd"><div align="center" class="style10 style16 style6 style15 style20"><strong>Describe<br />(About Your Community)</strong></div></td>
                <td bgcolor="#00FFFF"><span class="style19">
                  <textarea name="tcomment" rows="5" cols="21"></textarea>
                </span></td>
             </tr>
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
		  <p align="right"><a href="u_search_other_user1.jsp?user=<%=user%>" class="style14">Back</a></p>
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
