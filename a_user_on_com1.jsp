<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Movements</title>
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
.style16 {font-family: "Times New Roman", Times, serif; font-size: 25px; }
.style19 {color: #FF0000}
.style20 {color: #FFFFFF}
.style22 {font-size: 18px}
.style23 {font-family: "Times New Roman", Times, serif; font-size: 20px; color: #FF0000; }
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

	    <p align="center" class="style10">View <span class="style19"><%=user%>'s</span> Movements</p>
	    <p align="center" class="style10">&nbsp; </p>
	    <table width="679" border="1.5" cellpadding="0" cellspacing="0" align="center">
<tr bgcolor="#00FF33">
              <td width="55" height="44" bgcolor="#9eb8dd"><div align="center" class="style11 style10 style9 style8 style3 style20 style27 style4 style6 style15 style16 style22"><strong>Id  </strong></div></td>
              <td width="132" bgcolor="#9eb8dd"><div align="center" class="style11 style10 style9 style8 style3 style20 style27 style4 style6 style15 style16 style22"><strong>From Location  </strong></div></td>
			  <td width="132" bgcolor="#9eb8dd"><div align="center" class="style11 style10 style9 style8 style3 style20 style27 style4 style6 style15 style16 style22"><strong>To Location  </strong></div></td>
			  <td width="163" bgcolor="#9eb8dd"><div align="center" class="style11 style10 style9 style8 style3 style20 style27 style4 style6 style15 style16 style22"><strong>Date  </strong></div></td>
			  <td width="163" bgcolor="#9eb8dd"><div align="center" class="style11 style10 style9 style8 style3 style20 style27 style4 style6 style15 style16 style22"><strong>View in Map  </strong></div></td>
	      </tr>            

<%@ include file="connect.jsp" %>                      
<%	  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=1,k=0;

 try 
	{		
      	   String query2="select * from movements where username='"+user+"' "; 
           Statement st2=connection.createStatement();
           ResultSet rs2=st2.executeQuery(query2);
		   if ( rs2.next()!=true )
		   {
		   %> <p align="center"><span class="style23"><%=user%> Has Not Taken any Movements Yet</span></p> 
<%
		   }
		   
		   String query="select * from movements where username='"+user+"' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);//user
		s3=rs.getString(3);//fromloc
		s4=rs.getString(4);//
		s5=rs.getString(5);//
		s6=rs.getString(6);//toloc
		s7=rs.getString(7);//
		s8=rs.getString(8);//
		s9=rs.getString(9);//dt
		
		
		%>
		
		
                    
                    <tr>
                      <td height="53" bgcolor="#CC0000"><div align="center" class="style15 style16 style17 style11 style20 style22"><%=j%></div></td>
					  <td height="53" bgcolor="#CC0000"><div align="center" class="style15 style16 style17 style11 style20 style22"><%=s3%></div></td>
					  <td height="53" bgcolor="#CC0000"><div align="center" class="style15 style16 style17 style11 style20 style22"><%=s6%></div></td>
					  <td height="53" bgcolor="#CC0000"><div align="center" class="style15 style16 style17 style11 style20 style22"><%=s9%></div></td>
					  <td height="53" bgcolor="#CC0000" align="center"><a href="a_user_on_com2.jsp?floc=<%=s3%>&tloc=<%=s6%>" class="style11 style20 style22">Click Here</a></td>
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



		  
		  
		  
		  
<%
String type=request.getParameter("type");		  
if(type.equalsIgnoreCase("one"))
		{
		%>
		<p align="right"><a href="a_user_on_com.jsp" class="style2">Back</a></p>
<%
		}
		if(type.equalsIgnoreCase("two"))
		{
		%><p align="right"><a href="a_user_mul_sources.jsp" class="style2">Back</a></p>
<%
		}
		
%>		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  <p align="right">&nbsp;</p>
		  <p align="right">&nbsp;</p>
		  <p align="right">&nbsp;</p>
		  <p align="right">&nbsp;</p>
		  <p align="right">&nbsp;</p>
		  <p align="right">&nbsp;</p>
		  <p align="right">&nbsp;</p>
		  
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
