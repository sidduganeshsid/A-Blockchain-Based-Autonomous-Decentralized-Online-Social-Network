<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Add Post</title>
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

var na1=document.s.tname.value;
if(na1=="")

{
alert("Please Write Post Name");
document.s.tname.focus();
return false;
}


var na3=document.s.desc.value;
if(na3=="")

{
alert("Please Write Discription");
document.s.desc.focus();
return false;
}

var na3=document.s.tuses.value;
if(na3=="")

{
alert("Please Write Uses");
document.s.tuses.focus();
return false;
}
var na2=document.s.pic.value;
if(na2=="")

{
alert("Please Add Pic");
document.s.pic.focus();
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
.style16 {font-size: 20px}
.style17 {color: #FFFFFF}
.style19 {
	font-family: "Times New Roman", Times, serif;
	font-size: 15px;
	color: #FFFFFF;
}
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
	    <p align="center" class="style10">Add a Post </p>
	    <p>&nbsp;</p>
		
		
		  
		  
<form name="s" action="u_publish_tweet_ins.jsp" method="post" enctype="multipart/form-data"  onSubmit="return valid()"  ons target="_top">		  
 <table width="660" height="357" align="left">
                  <tr>
                    <td width="194" height="50" bgcolor="#FF0000"><span class="style12 style15 style16 style17">Tweet Name (required)</span></td>
                    <td width="454" bgcolor="#99FF33"><input name="tname" class="text " id="name" /></td>
                  </tr>
				  
				   <tr>
                     <td height="66" bgcolor="#FF0000"><span class="style12 style15 style16 style17">
                       <label for="label">Tweet Description</label>
                     </span></td>
                     <td bgcolor="#99FF33"><span class="style13">
                       <textarea id="desc" name="desc" rows="3" cols="50"></textarea>
                     </span></td>
                  </tr>
				  
				  <tr>
                    <td height="62" bgcolor="#FF0000"><span class="style12 style15 style16 style17">
                      <label for="label">Tweet Uses</label>
                    </span></td>
                    <td bgcolor="#99FF33"><span class="style13">
                      <textarea id="tuses" name="tuses" rows="3" cols="50"></textarea>
                    </span></td>
                  </tr>
				  
                  <tr>
                    <td height="72" bgcolor="#FF0000"><span class="style12 style15 style16 style17">Choose Tweet image (required)</span></td>
                    <td bgcolor="#99FF33"><input name="pic" type="file" class="text " id="pic" /></td>
                  </tr>
                 
                  
                  <tr>
				    <td><p>&nbsp;</p></td>
                    <td><p>&nbsp;</p>
                    <div align="left">
                      <input name="submit" type="submit" value="Encrypt and Publish" />
                      <span class="style19">(Tweet Description will get Encrypt)</span></div></td>
                  </tr>
</table>		  
</form>		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
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
