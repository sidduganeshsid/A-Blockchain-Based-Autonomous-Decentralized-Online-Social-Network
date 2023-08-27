<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import ="java.text.SimpleDateFormat" %>
<%@ page import ="javax.crypto.Cipher" %> 
<%@ page import ="org.bouncycastle.util.encoders.Base64" %>
<%

    try
		{
		    
			String username=request.getParameter("userid");      
   	        String Password=request.getParameter("pass");
			
			application.setAttribute("admin",username);
			
			
			String sql="SELECT * FROM admin where name='"+username+"' and pass='"+Password+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			if (rs.next()==true) 
					{
		
                          response.sendRedirect("a_main.jsp");
					
					}
			else
			{
				out.print("Invalid Login Details");
				 %><br/><br/><a href="a_login.jsp">Back</a><%
			}
	}
	catch(Exception e)
	{
		out.print(e);
	}
	
%>