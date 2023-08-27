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
.style11 {font-family: "Times New Roman", Times, serif}
.style12 {font-size: 20px}
.style13 {color: #FFFFFF}
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
		  <p align="center" class="style10">View All Users and Authorize </p>
		  <table width="646" border="1.5" cellpadding="0" cellspacing="0" align="center">
          <tr bgcolor="#00FF33">
            <td width="35" height="54" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style6 style7 style11 style12 style13"><strong>Id  </strong></div></td>
			<td width="90" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style6 style7 style11 style12 style13"><strong>User Image  </strong></div></td>
            <td width="115" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style6 style7 style11 style12 style13"><strong>User Name  </strong></div></td>
		    <td width="67" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style6 style7 style11 style12 style13"><strong>Status</strong></div></td>
            <td width="97" bgcolor="#9eb8dd"><div align="center" class="style3 style20 style27 style6 style7 style11 style12 style13"><strong> View User Details</strong></div></td>
		
		  </tr>

<%@ include file="connect.jsp" %>                      
<%	  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10="",s11="",s12="",s13="";
	int i=0,j=1,k=0;

 try 
	{		
      	                    String query="select * from user "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() ) 
			                {
				                 i=rs.getInt(1);
								s2=rs.getString(2);//name
								s4=rs.getString(4);//mail
								s5=rs.getString(5);
								s6=rs.getString(6);//add
								s7=rs.getString(7);//dob
								s8=rs.getString(8);
								s9=rs.getString(9);
								s10=rs.getString(10);
		%>
                    
                    <tr>
                      <td bgcolor="#CC0000"><div align="center" class="style5 style6 style7 style13 style11 style12"><%=j%></div></td>
                      <td bgcolor="#CC0000"><input  name="image" type="image" style="width:90px; height:90px;" src="u_Pic.jsp?id=<%=i%>" /></td>
					  <td bgcolor="#CC0000"><div align="center" class="style5 style6 style7 style13 style11 style12"><%=s2%></div></td>
					  <%
						if(s10.equalsIgnoreCase("waiting"))
						{
						
						%>
              <td bgcolor="#CC0000"><div align="center" class="style5 style6 style7 style13 style11 style12">
                <a href="u_Status.jsp?id=<%=i%>" class="style16 style14">waiting</a> </div></td>
              <%
						}
						else
						{
						%>
              <td bgcolor="#CC0000"><div align="center" class="style9 style5 style6 style7 style13 style11 style12">
                    <%=s10%>
                </div></td>
              <%
						}
						%>
			<td width="108" align="center" bgcolor="#CC0000"><a href="a_user_profile.jsp?user=<%=s2%>&type=<%="one"%>" class="style15 style13 style11 style12">Click here</a></td>
		  
					   
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
