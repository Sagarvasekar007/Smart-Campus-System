<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@page import="dao.MysqlConnect"%>
<%@page import="dao.DaoHostel"%>
<%@page import="dto.Menu"%>
<%@page import="dto.Rooms"%>
<%@page import="dto.Staff"%>
<%@page import="dto.Contacts"%>
<%@page import="dao.MysqlConnect"%>
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US" xml:lang="en">
<head>
    <!--
    Created by Sagar Vasekar v2.0.2.15338
    Base template (without user's data) checked by http://validator.w3.org : "This page is valid XHTML 1.0 Transitional"
    -->
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>Smart Campus System</title>

    <script type="text/javascript" src="script.js"></script>

    <link rel="stylesheet" href="style.css" type="text/css" media="screen" />
    <!--[if IE 6]><link rel="stylesheet" href="style.ie6.css" type="text/css" media="screen" /><![endif]-->
</head>
<body>
<%
	String hostel=request.getParameter("hostel");
	
	String update=request.getParameter("update");
	
	DaoHostel dao=new DaoHostel();
%>

<div class="PageBackgroundSimpleGradient">
    </div>
    <div class="Main">
        <div class="Sheet">
            <div class="Sheet-tl"></div>
            <div class="Sheet-tr"><div></div></div>
            <div class="Sheet-bl"><div></div></div>
            <div class="Sheet-br"><div></div></div>
            <div class="Sheet-tc"><div></div></div>
            <div class="Sheet-bc"><div></div></div>
            <div class="Sheet-cl"><div></div></div>
            <div class="Sheet-cr"><div></div></div>
            <div class="Sheet-cc"></div>
            <div class="Sheet-body">
                <div class="Header">
                    <div class="Header-png"></div>
                    <div class="Header-jpeg"></div>
                    <div class="logo">
                        <h1 id="name-text" class="logo-name"><a href="#"><%=hostel %> HOSTEL</a></h1>
                        
                    </div>
                </div>
                <div class="nav">
                    <ul class="artmenu">
                        <li><a href="#" ><span><span>Home</span></span></a></li>
                        <li><a href="#"><span><span>Hostel Home</span></span></a>
                                 
                                    </li>
                        <li><a href="HostelFetchOperation?hostel=<%= hostel %>&want=roomdetails" class=" active"><span><span>Rooms Details</span></span></a></li>
                        <li><a href="HostelFetchOperation?hostel=<%= hostel %>&want=staff"><span><span>Staff Details</span></span></a>
                                     
                                    </li>
                        <li><a href="HostelFetchOperation?hostel=<%= hostel %>&want=contact"><span><span>Contact Details</span></span></a></li>
                    </ul>
                    <div class="l">
                    </div>
                    <div class="r">
                        <div>
                        </div>
                    </div>
                </div>
                <div class="contentLayout">
                    <div class="sidebar1">
                        <div class="Block">
                            <div class="Block-body">
                                <div class="BlockHeader">
                                    <div class="header-tag-icon">
                                        <div class="BlockHeader-text">
                                            Newsletter
                                        </div>
                        s            </div>
                                    <div class="l"></div>
                                    <div class="r"><div></div></div>
                                </div>
                                <div class="BlockContent">
                                    <div class="BlockContent-body">
                                        <div><form method="get" id="newsletterform" action="javascript:void(0)">
                                        <input type="text" value="" name="email" id="s" style="width: 95%;" />
                                        <button class="Button" type="submit" name="search">
                                                <span class="btn">
                                                    <span class="t">Subscribe</span>
                                                    <span class="r"><span></span></span>
                                                    <span class="l"></span>
                                                </span>
                                        </button>
                                        </form></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="Block">
                            <div class="Block-body">
                                <div class="BlockHeader">
                                    <div class="header-tag-icon">
                                        <div class="BlockHeader-text">
                                            Contact Info
                                        </div>
                                    </div>
                                    <div class="l"></div>
                                    <div class="r"><div></div></div>
                                </div>
                                <div class="BlockContent">
                                    <div class="BlockContent-body">
                                        <div>
                                              <img src="images/contact.jpg" alt="an image" style="margin: 0 auto;display:block;width:95%" />
                                        <br />
                                        <b>Company Co.</b><br />
                                        Las Vegas, NV 12345<br />
                                        Email: <a href="mailto:info@company.com">info@company.com</a><br />
                                        <br/>
                                        Phone: (123) 456-7890 <br/>
                                        Fax: (123) 456-7890
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                      <div class="content">
                        <div class="Post">
                            <div class="Post-tl"></div>
                            <div class="Post-tr"><div></div></div>
                            <div class="Post-bl"><div></div></div>
                            <div class="Post-br"><div></div></div>
                            <div class="Post-tc"><div></div></div>
                            <div class="Post-bc"><div></div></div>
                            <div class="Post-cl"><div></div></div>
                            <div class="Post-cr"><div></div></div>
                            <div class="Post-cc"></div>
                            <div class="Post-body">
                        <div class="Post-inner">
                            <h2 class="PostHeaderIcon-wrapper">
                                <span class="PostHeader"><center>UPDATING <%=update %> DETAILS OF <%=hostel%> HOSTEL</center></span><br>
                            </h2>
                            
                            <div class="PostContent">
                                 <center>
                                 <%
                                 	if(hostel.equalsIgnoreCase("shivneri"))
                                 	{
                                 		if(update.equalsIgnoreCase("room"))
                                 		{
                                 	
                                 
                                  %>
                                 <%
                            int id=Integer.parseInt(request.getParameter("id"));
                            
                            
                            
                            Rooms m=new Rooms();
                            
                            m=dao.getRoomShivneri(id);
                            
                            
                             %>
                            
                                 <center>
                                 	<form action="ShivneriRoomUpdate">
                                 		<font face="Courier New" size="+1">
                                 		<br><br>
                                 				Menu Id :: <input type="text" name="id" value=<%=m.id %> readonly="readonly"></input> <br><br><br><br>
                                 		
                                 				Enter the Name of Student   :: <input type="text" name="name" value=<%=m.name %>></input><br><br><br><br>
                                 				
                                 				Enter the Room No of Student :: <input type="text" name="room" value=<%=m.room_no %>></input><br><br><br>
                                 		
                                 		
                                 						
                                 		</font>
		
                                 <input type="submit" value="Submit"/>
                                 <input type="reset" value="Reset"/>
                                 
                                 </form>
                                   </center>                       
                           
        
                                 <%}
                                 
                                 else if(update.equalsIgnoreCase("staff"))
                                 {
                                  %>
                                 <%
                            int id=Integer.parseInt(request.getParameter("id"));
                            
                            
                            
                            Staff m=new Staff();
                            
                            m=dao.getStaffShivneri1(id);
                            
                            
                             %>
                            
                                 <center>
                                 	<form action="ShivneriStaffUpdate">
                                 		<font face="Courier New" size="+1">
                                 		<br><br>
                                 				Staff Id :: <input type="text" name="id" value=<%=m.emp_id %> readonly="readonly"></input> <br><br><br><br>
                                 		
                                 				Enter the Name of Memeber   :: <input type="text" name="name" value=<%=m.name %> ></input><br><br><br><br>
                                 		
                                 				Enter the Role of Memeber   :: <input type="text" name="role" value=<%=m.role %>></input><br><br><br><br>
                                 				
                                 				Enter the Contact Number of Memeber :: <input type="text" name="contact" value=<%=m.contact %>></input><br><br><br>
                                 		
                                 		
                                 						
                                 		</font>
		
                                 <input type="submit" value="Submit"/>
                                 <input type="reset" value="Reset"/>
                                 
                                 </form>
                                   </center>                       
        
                                 <%} 
                                 
                                 else if(update.equalsIgnoreCase("contact"))
                                 {
                                 %>
                                                           
                            <%
                            int id=Integer.parseInt(request.getParameter("id"));
                            
                            
                            
                            Contacts m=new Contacts();
                            
                            m=dao.getContactShivneri(id);
                            
                            
                             %>
                            
                                 <center>
                                 	<form action="ShivneriContactUpdate">
                                 		<font face="Courier New" size="+1">
                                 		<br><br>
                                 			 Id :: <input type="text" name="id" value=<%=m.id %> readonly="readonly"></input> <br><br><br><br>
                                 		
                                 				Enter the Name of Memeber   :: <input type="text" name="name" value=<%=m.name %>></input><br><br><br><br>
                                 				
                                 				Enter the Role of Memeber   :: <input type="text" name="role" value=<%=m.role %>></input><br><br><br><br>
                                 				
                                 				Enter the Contact Number of Memeber :: <input type="text" name="contact" value=<%=m.contact %>></input><br><br><br>
                                 				
                                 					Enter the Address of Memeber :: <input type="text" name="address" value=<%=m.address %>></input><br><br><br>
                                 					
                                 						Enter the Email of Memeber :: <input type="text" name="email" value=<%=m.email %>></input><br><br><br>
                                 		
                                 		
                                 						
                                 		</font>
		
                                 <input type="submit" value="Submit"/>
                                 <input type="reset" value="Reset"/>
                                 
                                 </form>
                                   </center>                       
        
                                 <%
                                 }
                                 }
                                 else if(hostel.equalsIgnoreCase("devgiri"))
                                 {
                                 	if(update.equalsIgnoreCase("room"))
                                 	{
                                 
                                  %>
                             <%
                            int id=Integer.parseInt(request.getParameter("id"));
                            
                            
                            
                            Rooms m=new Rooms();
                            
                            m=dao.getRoomDevgiri(id);
                            
                            
                             %>
                            
                                 <center>
                                 	<form action="DevgiriRoomUpdate">
                                 		<font face="Courier New" size="+1">
                                 		<br><br>
                                 				Menu Id :: <input type="text" name="id" value=<%=m.id %> readonly="readonly"></input> <br><br><br><br>
                                 		
                                 				Enter the Name of Student   :: <input type="text" name="name" value=<%=m.name %>></input><br><br><br><br>
                                 				
                                 				Enter the Room No of Student :: <input type="text" name="room" value=<%=m.room_no %>></input><br><br><br>
                                 		
                                 		
                                 						
                                 		</font>
		
                                 <input type="submit" value="Submit"/>
                                 <input type="reset" value="Reset"/>
                                 
                                 </form>
                                   </center>                       
                           
                                 <%}
                                 
                                 else if (update.equalsIgnoreCase("staff")) 
                                 
                                 {%>
                                 
                            <%
                            int id=Integer.parseInt(request.getParameter("id"));
                            
                            
                            
                            Staff m=new Staff();
                            
                            m=dao.getStaffDevgiri1(id);
                            
                            
                             %>
                            
                                 <center>
                                 	<form action="DevgiriStaffUpdate">
                                 		<font face="Courier New" size="+1">
                                 		<br><br>
                                 				Staff Id :: <input type="text" name="id" value=<%=m.emp_id %> readonly="readonly"></input> <br><br><br><br>
                                 		
                                 				Enter the Name of Memeber   :: <input type="text" name="name" value=<%=m.name %>></input><br><br><br><br>
                                 				
                                 				Enter the Role of Memeber   :: <input type="text" name="role" value=<%=m.role %>></input><br><br><br><br>
                                 				
                                 				Enter the Contact Number of Memeber :: <input type="text" name="contact" value=<%=m.contact %>></input><br><br><br>
                                 		
                                 		
                                 						
                                 		</font>
		
                                 <input type="submit" value="Submit"/>
                                 <input type="reset" value="Reset"/>
                                 
                                 </form>
                                   </center>                       
        
                                 <%}
                                 
                                 else if (update.equalsIgnoreCase("contact"))
                                 { %>
                                 
                                       <%
                            int id=Integer.parseInt(request.getParameter("id"));
                            
                            
                            
                            Contacts m=new Contacts();
                            
                            m=dao.getContactDevgiri(id);
                            
                            
                             %>
                            
                                 <center>
                                 	<form action="DevgiriContactUpdate">
                                 		<font face="Courier New" size="+1">
                                 		<br><br>
                                 			 Id :: <input type="text" name="id" value=<%=m.id %> readonly="readonly"></input> <br><br><br><br>
                                 		
                                 				Enter the Name of Memeber   :: <input type="text" name="name" value=<%=m.name %>></input><br><br><br><br>
                                 				
                                 				Enter the Role of Memeber   :: <input type="text" name="role" value=<%=m.role %>></input><br><br><br><br>
                                 				
                                 				Enter the Contact Number of Memeber :: <input type="text" name="contact" value=<%=m.contact %>></input><br><br><br>
                                 				
                                 					Enter the Address of Memeber :: <input type="text" name="address" value=<%=m.address %>></input><br><br><br>
                                 					
                                 						Enter the Email of Memeber :: <input type="text" name="email" value=<%=m.email %>></input><br><br><br>
                                 		
                                 		
                                 						
                                 		</font>
		
                                 <input type="submit" value="Submit"/>
                                 <input type="reset" value="Reset"/>
                                 
                                 </form>
                                   </center>                       
        
        
                                 <%
                                 }
                                 }
                                 else if(hostel.equalsIgnoreCase("sahyadri"))
                                 {
                                 	if(update.equalsIgnoreCase("room"))
                                 	{
                                  %>
                                  
        <%
                            int id=Integer.parseInt(request.getParameter("id"));
                            
                            
                            
                            Rooms m=new Rooms();
                            
                            m=dao.getRoomSahyadri(id);
                            
                            
                             %>
                            
                                 <center>
                                 	<form action="SahyadriRoomUpdate">
                                 		<font face="Courier New" size="+1">
                                 		<br><br>
                                 				Menu Id :: <input type="text" name="id" value=<%=m.id %> readonly="readonly"></input> <br><br><br><br>
                                 		
                                 				Enter the Name of Student   :: <input type="text" name="name" value=<%=m.name %>></input><br><br><br><br>
                                 				
                                 				Enter the Room No of Student :: <input type="text" name="room" value=<%=m.room_no %>></input><br><br><br>
                                 		
                                 		
                                 						
                                 		</font>
		
                                 <input type="submit" value="Submit"/>
                                 <input type="reset" value="Reset"/>
                                 
                                 </form>
                                   </center>                       
                                 <%}
                                 else if(update.equalsIgnoreCase("staff"))
                                 {
                                  %>
                                  
                                   <%
                            int id=Integer.parseInt(request.getParameter("id"));
                            
                            
                            
                            Staff m=new Staff();
                            
                            m=dao.getStaffSahyadri1(id);
                            
                            
                             %>
                            
                                 <center>
                                 	<form action="SahyadriStaffUpdate">
                                 		<font face="Courier New" size="+1">
                                 		<br><br>
                                 				Staff Id :: <input type="text" name="id" value=<%=m.emp_id %> readonly="readonly"></input> <br><br><br><br>
                                 		
                                 				Enter the Name of Memeber   :: <input type="text" name="name" value=<%=m.name %>></input><br><br><br><br>
                                 				
                                 				Enter the Role of Memeber   :: <input type="text" name="role" value=<%=m.role %>></input><br><br><br><br>
                                 				
                                 				Enter the Contact Number of Memeber :: <input type="text" name="contact" value=<%=m.contact %>></input><br><br><br>
                                 		
                                 		
                                 						
                                 		</font>
		
                                 <input type="submit" value="Submit"/>
                                 <input type="reset" value="Reset"/>
                                 
                                 </form>
                                   </center>                       
                           
                                    
                                 <%}
                                 
                                 else if(update.equalsIgnoreCase("contact"))
                                 { %>
                                       <%
                            int id=Integer.parseInt(request.getParameter("id"));
                            
                            
                            
                            Contacts m=new Contacts();
                            
                            m=dao.getContactSahyadri(id);
                            
                            
                             %>
                            
                                 <center>
                                 	<form action="SahyadriContactUpdate">
                                 		<font face="Courier New" size="+1">
                                 		<br><br>
                                 			 Id :: <input type="text" name="id" value=<%=m.id %> readonly="readonly"></input> <br><br><br><br>
                                 		
                                 				Enter the Name of Memeber   :: <input type="text" name="name" value=<%=m.name %>></input><br><br><br><br>
                                 				
                                 				Enter the Role of Memeber   :: <input type="text" name="role" value=<%=m.role %>></input><br><br><br><br>
                                 				
                                 				Enter the Contact Number of Memeber :: <input type="text" name="contact" value=<%=m.contact %>></input><br><br><br>
                                 				
                                 					Enter the Address of Memeber :: <input type="text" name="address" value=<%=m.address %>></input><br><br><br>
                                 					
                                 						Enter the Email of Memeber :: <input type="text" name="email" value=<%=m.email %>></input><br><br><br>
                                 		
                                 		
                                 						
                                 		</font>
		
                                 <input type="submit" value="Submit"/>
                                 <input type="reset" value="Reset"/>
                                 
                                 </form>
                                   </center>                       
        
                                 <%
                                 
                                 }
                                 } %>
                                   </center>                       
                           
                                    
                            </div>
                            <div class="cleared"></div>
                        </div>
                        
                       </div>
                       </div>
                       </div>
                       
                        
                    
                    
    
                    <div class="sidebar2">
	<div class="Block">
                            <div class="Block-body">
                                <div class="BlockHeader">
                                    <div class="header-tag-icon">
                                        <div class="BlockHeader-text">
            Login
                                        </div>
                                    </div>
                                    <div class="l"></div>
                                    <div class="r"><div></div></div>
                                </div>
                                <div class="BlockContent">
                                    <div class="BlockContent-body">
                                        <div>
                                        <form action="/html/codes/html_form_handler.cfm" method="get">
				User Name :: <input type="text" >               
				   <br>
				Password    :: <input type="text">		<br>
				

<input type="radio" name="preferred_account" value="Admin" /> Admin<br />
<input type="radio" name="preferred_account" value="Sub-admin" /> Sub-admin<br />
<input type="radio" name="preferred_account" value="Other" /> Other<br />


<br>
	<center>				
				<button class="Button" type="submit" name="search">
                                                <span class="btn">
                                                    <span class="t">Login</span>
                                                    <span class="r"><span></span></span>
                                                    <span class="l"></span>
                                                </span>
                                        </button>
                                        </center>		
                                        </form>	
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>





                        <div class="Block">
                            <div class="Block-body">
                                <div class="BlockHeader">
                                    <div class="header-tag-icon">
                                        <div class="BlockHeader-text">
                                            Highlights
                                        </div>
                                    </div>
                                    <div class="l"></div>
                                    <div class="r"><div></div></div>
                                </div>
                                <div class="BlockContent">
                                    <div class="BlockContent-body">
                                        <div>
                                                          <ul><li><b>Jun 14, 2008</b>
                                                          <p>Aliquam sit amet felis. Mauris semper, 
                                                                velit semper laoreet dictum, quam 
                                                                diam dictum urna, nec placerat elit 
                                                                nisl in quam. Etiam augue pede, 
                                                                molestie eget, rhoncus at, convallis 
                                                                ut, eros. Aliquam pharetra.<br/>
                                                                <a href="javascript:void(0)">Read more...</a>                
                                                          </p></li></ul>
                                                          <ul><li><b>Aug 24, 2008</b>
                                                          <p>Aliquam sit amet felis. Mauris semper, 
                                                                velit semper laoreet dictum, quam 
                                                                diam dictum urna, nec placerat elit 
                                                                nisl in quam. Etiam augue pede, 
                                                                molestie eget, rhoncus at, convallis 
                                                                ut, eros. Aliquam pharetra.<br/>
                                                                <a href="javascript:void(0)">Read more...</a>                
                                                          </p></li></ul>
                                                          </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cleared"></div><div class="Footer">
                    <div class="Footer-inner">
                        <a href="#" class="rss-tag-icon" title="RSS"></a>
                        <div class="Footer-text">
                            <p><a href="#">Contact Us</a> | <a href="#">Terms of Use</a> | <a href="#">Trademarks</a>
                                | <a href="#">Privacy Statement</a><br />
                                Copyright &copy; 2009 ---. All Rights Reserved.</p>
                        </div>
                    </div>
                    <div class="Footer-background"></div>
                </div>
            </div>
        </div>
        <div class="cleared"></div>
        
    </div>
    
</body>
</html>

