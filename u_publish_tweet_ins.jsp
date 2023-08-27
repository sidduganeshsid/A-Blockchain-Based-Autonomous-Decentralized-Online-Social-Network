<title>Insert tweets  Data</title>
 <%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.*,java.util.Random,java.security.KeyPairGenerator,javax.crypto.Cipher,java.security.Key,java.security.KeyPair     "%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>


<%
					ArrayList list = new ArrayList();
					ServletContext context = getServletContext();
					String dirName =context.getRealPath("Gallery\\");
					String paramname=null;
					String file=null;
					String a=null,b=null,d=null,image=null;
					String ee[]=null;
					String checkBok=" ";
					int ff=0;
					String bin = "";
					String tname=null;     
					String desc=null;
					String tuses=null;
					int rank=0;
					
					String uname=(String)application.getAttribute("user");
				
					FileInputStream fs=null;
					File file1 = null;	
					String type=request.getParameter("type");
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB
						Enumeration params = multi.getParameterNames();
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							if(paramname.equalsIgnoreCase("tname"))
							{
								tname=multi.getParameter(paramname);
							}
							
							if(paramname.equalsIgnoreCase("desc"))
							{
								desc=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("tuses"))
							{
								tuses=multi.getParameter(paramname);
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
								list.add(fs);
							
								String ss=fPath;
								FileInputStream fis = new FileInputStream(ss);
								StringBuffer sb1=new StringBuffer();
								int i = 0;
								while ((i = fis.read()) != -1)
								 {
									if (i != -1) 
									{
										//System.out.println(i);
										String hex = Integer.toHexString(i);
										// session.put("hex",hex);
										sb1.append(hex);
										// sb1.append(",");
									
										String binFragment = "";
										int iHex;
			 
										for(int i1= 0; i1 < hex.length(); i1++)
										{
											iHex = Integer.parseInt(""+hex.charAt(i1),16);
											binFragment = Integer.toBinaryString(iHex);
			
											while(binFragment.length() < 4)
											{
												binFragment = "0" + binFragment;
											}
											bin += binFragment;
											//System.out.print(bin);
										}
									}	
								}
							}		
						}
						FileInputStream fs1 = null;
						//name=dirName+"\\Gallery\\"+image;
						int lyke=0;
						SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

						Date now = new Date();
						
						String strDate = sdfDate.format(now);
						String strTime = sdfTime.format(now);
						String dt = strDate + "   " + strTime;
         
    	
    	               
						
			 	String keys="q2e34rrfgfgfgg2a";
      			byte[] keyValue = keys.getBytes();
      			Key key = new SecretKeySpec(keyValue, "AES");
      			Cipher c = Cipher.getInstance("AES");
      			c.init(Cipher.ENCRYPT_MODE, key);
      			
				String encdes = new String(Base64.encode(desc.getBytes()));
				
				
				String contents=tname+uname;
				//Generate Hash Code to create block chain
								String namefile="filename.txt";
								PrintStream p=new PrintStream(new FileOutputStream(namefile));
								p.print(new String(contents));
								
								
								MessageDigest md=MessageDigest.getInstance("SHA1");
								FileInputStream fis11=new FileInputStream(namefile);				
								DigestInputStream dis1=new DigestInputStream(fis11,md);
								BufferedInputStream bis1=new BufferedInputStream(dis1);				
								while(true)
								{
								
									int b1=bis1.read();
									if(b1==-1)
									
									break;
								}
								
								BigInteger bi1=new BigInteger(md.digest());
								String spl1=bi1.toString();
								String hcode=bi1.toString(16);
				
					 
					   
						PreparedStatement ps=connection.prepareStatement("insert into posts(user,title,image,description,uses,date,rank,hash_sign) values(?,?,?,?,?,?,?,?)");
						ps.setString(1,uname);
						ps.setString(2,tname);
						ps.setBinaryStream(3, (InputStream)fs, (int)(file1.length()));	
						ps.setString(4,encdes);	
						ps.setString(5,tuses);
						ps.setString(6,dt);
						ps.setInt(7,rank);
						ps.setString(8,hcode);
								
						
						if(f == 0)
							ps.setObject(10,null);
						else if(f == 12)
						{
							fs1 = (FileInputStream)list.get(0);
							ps.setBinaryStream(10,fs1,fs1.available());
						}	
						
					
						int x=ps.executeUpdate();
						if(x>0)
						{
							
							out.print("Tweet Added Successfully");
							
						%>
						<p><a href="u_publish_tweet.jsp">Back</a> </p>        
						<p><a href="u_main.jsp">User Main</a> </p>

						<%
					   }
			   
		}
					catch (Exception e) 
					{
						out.println(e.getMessage());
						e.printStackTrace();
					}
				%>
