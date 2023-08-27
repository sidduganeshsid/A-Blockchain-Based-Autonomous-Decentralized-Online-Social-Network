<title>Insert comments</title>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>


<%
					
					
					
				
					
					
					String user=(String)application.getAttribute("user");
					
					String rto=request.getParameter("rto");
					String towner=request.getParameter("tby");
					String title=request.getParameter("tname");
					
					
					
					try {
						
						SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
						Date now = new Date();
						String strDate = sdfDate.format(now);
						String strTime = sdfTime.format(now);
						String dt = strDate + "   " + strTime;
						
						if(rto.equalsIgnoreCase(towner))
						{
			%> 
			  <style type="text/css">
<!--
.style1 {color: #FF0000}
-->
              </style>
			  <p class="style1">Please Check! You Are Recommending Post to the Post Owner.</p>
			  <p><a href="u_frnd_tweets.jsp">Back</a></p>
			  <p><a href="u_main.jsp">User Main</a> </p>
			<%		
						}
						else
						{
         
    	
						PreparedStatement ps=connection.prepareStatement("insert into recommend(title,rfrom,rto,dt) values(?,?,?,?)");
						ps.setString(1,title);
						ps.setString(2,user);	
						ps.setString(3,rto);
						ps.setString(4,dt);
					
						int x=ps.executeUpdate();
						if(x>0)
						{
							
							
							
			%> 
			  Post Recommended Successfully
			  <p><a href="u_friends_posts.jsp">Back</a></p>
			  <p><a href="u_main.jsp">User Main</a> </p>
			<%
					   }
					   }
					   
			   }
					catch (Exception e) 
					{
						out.println(e.getMessage());
						e.printStackTrace();
					}
				%>
