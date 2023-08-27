<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Register</title>
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


var na3=document.s.userid.value;
if(na3=="")

{
alert("Please Enter User Name");
document.s.userid.focus();
return false;
}
else
{

}
var na4=document.s.pass.value;
if(na4=="")

{
alert("Please Enter Password");
document.s.pass.focus();
return false;
}

var na29=document.s.com.value;
if(na29=="-Select-")

{
alert("Please Select Your Community");
document.s.com.focus();
return false;
}

var na6=document.s.email.value;
if(na6=="")

{
alert("Please Enter the Email");
document.s.email.focus();
return false;
}

if (na6.indexOf("@", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.s.T3.focus();
return false;
}

if (na6.indexOf(".", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.s.T3.focus();
return false;
}	


var na7=document.s.mobile.value;
if(na7.length!=10)

{
alert("Please Enter Valid Mobile number or Enter 10 Digit number");
document.s.mobile.focus();
return false;
}

if(na7=="")

{
alert("Please Enter  Mobile number");
document.s.mobile.focus();
return false;
}

var na55=document.s.address.value;
if(na55=="")

{
alert("Please Enter Your Address");
document.s.address.focus();
return false;
}

var dob=document.s.dob.value;
if(dob=="")

{
alert("please Enter Your Date Of Birth");
document.s.dob.focus();
return false;
}

var na9=document.s.gender.value;
if(na9=="-Select-")

{
alert("Please Select Your Gender");
document.s.gender.focus();
return false;
}

var na11=document.s.pic.value;
if(na11=="")

{
alert("please Select Picture");
document.s.pic.focus();
return false;
}




var naloc=document.s.loc.value;
if(naloc=="")

{
alert("Please Enter Your location");
document.s.loc.focus();
return false;
}

var na25=document.s.lat.value;
if(na25=="")

{
alert("Please Enter Latitude");
document.s.lat.focus();
return false;
}
var na35=document.s.lon.value;
if(na35=="")

{
alert("Please Enter Longitude");
document.s.lon.focus();
return false;
}

}
</script>

<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&key=AIzaSyD0X4v7eqMFcWCR-VZAJwEMfb47id9IZao"></script>
<script>
            var map;

            function initialize()
			{
                var mapOptions = {
                    zoom: 12,
                    center: new google.maps.LatLng(12.9716, 77.5946),
                    mapTypeId: google.maps.MapTypeId.ROADMAP
                                 };
                map = new google.maps.Map(document.getElementById('map_canvas'),
                    mapOptions);
					
                google.maps.event.addListener(map, 'click', function(event) 
				{
                    document.getElementById('latMap').value = event.latLng.lat();
                    document.getElementById('lngMap').value = event.latLng.lng();
                });
            }
            function mapDivClicked (event) 
			{
                var target = document.getElementById('map_canvas'),
                    posx = event.pageX - target.offsetLeft,
                    posy = event.pageY - target.offsetTop,
                    bounds = map.getBounds(),
                    neLatlng = bounds.getNorthEast(),
                    swLatlng = bounds.getSouthWest(),
                    startLat = neLatlng.lat(),
                    endLng = neLatlng.lng(),
                    endLat = swLatlng.lat(),
                    startLng = swLatlng.lng();

                document.getElementById('posX').value = posx;
                document.getElementById('posY').value = posy;
                document.getElementById('lat').value = startLat + ((posy/350) * (endLat - startLat));
                document.getElementById('lng').value = startLng + ((posx/500) * (endLng - startLng));
            }
            google.maps.event.addDomListener(window, 'load', initialize);
</script>

<style type="text/css">
<!--
.style1 {font-size: 30px}
.style2 {
	font-family: "Times New Roman", Times, serif;
	font-size: 20px;
}
.style7 {color: #FFFFFF}
.style9 {
	font-size: 25px;
	color: #CCCCCC;
	font-family: "Times New Roman", Times, serif;
}
.style10 {font-size: 25px; color: #FFFFFF; font-weight: bold; }
.style11 {
	font-family: "Times New Roman", Times, serif;
	color: #CCCCCC;
}
.style12 {color: #CCCCCC}
.style14 {font-size: 20px}
.style15 {font-family: "Times New Roman", Times, serif}
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
		  <p align="center" class="style10">User Registration </p>
		  
		  
		  
		  
  
<form name="s" action="u_RegIns.jsp" method="post" enctype="multipart/form-data" onSubmit="return valid()"  ons target="_top">
		  
            <span class="style12 style7 style9">
            <label for="name"> <br />
            </label>
            </span><span class="style7 style9">
            <label for="name"></label>
            </span><span class="style9">
            <label for="name">User Name (required)<br />
            </label>
            </span>
            <p class="style14 style5 style6 style11"><input id="name" name="userid" class="text" />
            </p>
			
            <span class="style9 style14 style8 style20 style5 style6">
             <label for="password">Password (required)<br />
             </label>
            </span>
            <p class="style14 style5 style6 style11"><input type="password" id="password" name="pass" class="text" /></p>
			
			<span class="style8 style9 style14 style20 style5 style6">
                  <label for="gender">Select Your Community (required)<br />
                  </label>
          </span>
                  <p class="style8 style9 style20 style5 style6">
                    <select id="s1" name="com" class="text" style="width:200px">
                      <option>-Select-</option>
                      <option>Scientiest</option>
                      <option>Engineer</option>
					  <option>Doctor</option>
                    </select>
                  </p>
			
			
			
			
                  <span class="style9 style14 style8 style20 style5 style6">
                  <label for="email">Email Address (required)<br />
                  </label>
                  </span>
                  <p class="style14 style5 style6 style11">
                    <input id="email" name="email" class="text" />
                  </p>
				  
                  <span class="style9 style14 style8 style20 style5 style6">
                  <label for="mobile">Mobile Number (required)<br />
                  </label>
                  </span>
                  <p class="style14 style5 style6 style11">
                    <input id="mobile" name="mobile" class="text" />
                  </p>
				  
                  <span class="style9 style14 style8 style20 style5 style6">
                  <label for="address">Your Address(required)<br />
                  </label>
                  </span>
                  <p class="style14 style5 style6 style11">
                    <textarea name="address" cols="50" id="address"></textarea>
                  </p>
				  
                  <span class="style9 style14 style8 style20 style5 style6">
                  <label for="dob">Date of Birth (required)<br />
                  </label>
                  </span>
                  <p class="style14 style5 style6 style11">
                    <input id="dob" name="dob" class="text" />
                  </p>
				  
				  
				  
                  <span class="style8 style9 style14 style20 style5 style6">
                  <label for="gender">Select Gender (required)<br />
                  </label>
                  </span>
                  <p class="style8 style9 style20 style5 style6">
                    <select id="s1" name="gender" class="text" style="width:150px">
                      <option>-Select-</option>
                      <option>Male</option>
                      <option>Female</option>
                    </select>
                  </p>
				  
				  
				  
                  
				  
                  <span class="style19 style9 style14 style23 style5 style6">
                  <label for="pic">Select Profile Picture (required)</label>
                  </span>
                  <span class="style8 style9 style20 style23 style5 style6">
                  <label for="pic"><br />
                  </label>
                  </span>
				  
                  <p class="style15">
                    <input type="file" id="pic" name="pic" class="text" />
		          </p>
				  
		  <span class="style9 style14 style8 style20 style5 style6">
          <label for="loc"></label>
				  </span><span class="style9 style14 style8 style20 style5 style6"><label for="lat"><br />
                  </label>
				  </span>
				  <p class="style15">
                    <input name="submit" type="submit" value="REGISTER"> <input type="reset" value="RESET">
                  </p>
</form>		  
		  
		  
		  
		  
<p>&nbsp;</p>
	 <p align="right"><a href="u_login.jsp" class="style2">Back</a></p>
		  
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="index.html">Home</a></li>
            <li><a href="a_login.jsp">Admin</a></li>
            <li><a href="u_login.jsp">User</a></li>
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
