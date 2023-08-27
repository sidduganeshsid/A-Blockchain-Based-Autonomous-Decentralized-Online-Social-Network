<title>Mapping </title>
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

		int count=0;
		String s1="",s2="",s3="";
		String  d1="",d2="";
		String user=(String)application.getAttribute("user");
			
int i=0;

		try{
		   String query="select * from movements where username='"+user+"' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
		   
		   while(rs.next())
{

String uuser=rs.getString(2);
s1="India";
s2="Karnataka";
s3= rs.getString(6);//loc
d1=rs.getString(7);//lct
d2=rs.getString(8);//long

%>
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
-->
</style>


<span class="style1">contentstring["<%=i%>"] = " <%=s1%>, <%=s2%>,<%=s3%>";
            regionlocation["<%=i%>"] = "<%=d1%>"+",<%=d2%>";
<%


i=i+1;

}

}
		catch(Exception e)
		{
		e.printStackTrace();
		}


%>
</span>