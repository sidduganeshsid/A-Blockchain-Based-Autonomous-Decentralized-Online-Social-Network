
<%@ include file="connect.jsp"%>

<%
try
{
	 String query="select name from user";
	 Statement st=connection.createStatement();
	 ResultSet rs=st.executeQuery(query);
					
%>

<html>
<head>
<title>Account Type Results</title>
<script type="text/javascript" src="sources/jscharts.js"></script>
<style type="text/css">
<!--
.style2 {color: #C1FFFF}
.style3 {color: #F0F0F0}
-->
</style>
</head>
<body>
<div id="graph">Loading graph...</div>
<script type="text/javascript">
var myData=new Array();
var colors=[];

<%
	int i=0,count=0,count1=0,s7=0;
	String s1,s2;

	while(rs.next())
	{
	  s1=rs.getString(1);
	  
	  String query2="select * from movements where username='"+s1+"' ";
	  Statement st2=connection.createStatement();
	  ResultSet rs2=st2.executeQuery(query2);
	  while(rs2.next())
	  {
	   count++;
	  }
	  
	  				
				    
	 
	 
	 
	
	%>
	
	myData["<%=i%>"]=["<%= s1%>",<%= count%>];
        
	<%
	count=0;
	                
	i++;
	}                
					
	
	
	
	%>
	
	var myChart = new JSChart('graph', 'bar');
	myChart.setDataArray(myData);
	myChart.setBarColor('#FF3300');
	myChart.setBarOpacity(0.8);
	myChart.setBarBorderColor('#FFFFFF');
	myChart.setBarValues(true);
	myChart.setTitleColor('#FFFFFF');
	myChart.setAxisColor('#FFFFFF');
	myChart.setAxisValuesColor('#FFFFFF');
	myChart.setSize(500,300);
	myChart.draw();
	
</script>

</body>
</html>
<%
}
catch(Exception e)
{
e.printStackTrace();
}
%>

