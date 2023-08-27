<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Register Status</title>
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
.style11 {font-family: "Times New Roman", Times, serif; font-size: 20px; color: #FF0000; }
.style12 {font-family: "Times New Roman", Times, serif; font-size: 20px; color: #FFFFFF; }
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
		  <p align="center" class="style10">User Registration status</p>
		  
		  
		  
		  
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.util.Date" %>
 <%@ include file="connect.jsp" %>
 <%@ page import ="java.security.Key" %>
 <%@ page import ="javax.crypto.Cipher" %> 
 <%@ page import ="java.math.BigInteger" %>
 <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
 <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
 <%@ page import ="java.security.MessageDigest,java.security.DigestInputStream" %>
 <%@ page import ="java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.io.BufferedInputStream" %>


<%
					
  try 
  {
					ServletContext context = getServletContext();
					String dirName =context.getRealPath("Gallery/");
					String paramname=null;
					String image=null;
					String com=null;
					String uname=null;     
    				String pass=null;	
					String email=null;
					String mno=null;
					String gen=null;
					String dateOfBirth=null;
					String addr=null;
					String cont=null;
					String state=null;
					String loc=null;
					String lat=null;
					String lon=null;
					FileInputStream fs=null;
					File file1 = null;	
					
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB
						Enumeration params = multi.getParameterNames();
						
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							if(paramname.equalsIgnoreCase("userid"))
							{
								uname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("pass"))
							{
								pass=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("com"))
							{
								com=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("email"))
							{
								email=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("mobile"))
							{
								mno=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("dob"))
							{
								dateOfBirth=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("gender"))
							{
								gen=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("address"))
							{
								addr=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("pic"))
							{
								image=multi.getParameter(paramname);
							}
							
						
						}
							
						int f = 0;
						Enumeration files = multi.getFileNames();	
						
						while (files.hasMoreElements()) 
						{
							paramname = (String) files.nextElement();
														
							if(paramname != null)
							{
								f = 1;
								image = multi.getFilesystemName(paramname);
								String fPath = context.getRealPath("Gallery\\"+image);
								file1 = new File(fPath);
								fs = new FileInputStream(file1);
							}		
						}
				
						
						String str = "select * from user where name='"+uname+"' ";
						Statement st = connection.createStatement();
						ResultSet rs = st.executeQuery(str);
						
						if(rs.next())
						{
						%>
						<p align="center" class="style11">&nbsp;</p>
						<p align="center" class="style11">User Name Already Exist</p>
						<p align="right"><a href="u_register.jsp" class="style2">Back</a></p>
						<%
						
						}
			 			else
						{
					   
						PreparedStatement ps=connection.prepareStatement("insert into user(name,pass,community,email,mobile,dob,gender,addr,status,image) values(?,?,?,?,?,?,?,?,?,?)");
						ps.setString(1,uname);
						ps.setString(2,pass);
						ps.setString(3,com);
						ps.setString(4,email);	
						ps.setString(5,mno);
						ps.setString(6,dateOfBirth);
						ps.setString(7,gen);
						ps.setString(8,addr);
						ps.setString(9,"Waiting");
						ps.setBinaryStream(10, (InputStream)fs, (int)(file1.length()));
							
						if(f == 0)
							ps.setObject(10,null);
					
						
						int x=ps.executeUpdate();
					
					%>
					<p align="center" class="style12">&nbsp;</p>
					<p align="center" class="style12">User Registered Successfully</p>
					<p align="right"><a href="u_register.jsp" class="style2">Back</a></p>
					<%
						}
						}
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
				%>  




















							  
							  
      		  
		  
		  
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
