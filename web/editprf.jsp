<%@page import="Global.DB"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
     <script type="text/javascript">
        function check(f)
        {
            var un=document.getElementById("a").value;
            var ad=document.getElementById("b").value;
            var mob=document.getElementById("c").value;
            var qual=document.getElementById("d").value;
            var intrst=document.getElementById("e").value;
            var dob=document.getElementById("f").value;
           var e1=document.getElementById("d1");
           var e2=document.getElementById("d2");
           var e3=document.getElementById("d3");
           var e4=document.getElementById("d4");
           var e5=document.getElementById("d5");
           var e6=document.getElementById("d6");
           flag=true;
            
            if(un=="")
            {
                e1.innerHTML="<font color=red>User Name can't be empty !</font>";
                flag=false;
            }
            else
            {
                e1.innerHTML="";
            }
            if(ad=="")
            {
                 e2.innerHTML="<font color=red>Address can't be empty !</font>";
                 flag=false;
            }
            else
            {
                 e2.innerHTML="";
            }
            if(mob=="")
            {
                 e3.innerHTML="<font color=red>Please Enter your Mobile Number !</font>";
                 flag=false;
            }
            else
            {
                 e3.innerHTML="";
            }
            if(qual=="")
            {
                 e4.innerHTML="<font color=red>Please Enter your Qualifications !</font>";
                 flag=false;
            }
            else
            {
                 e4.innerHTML="";
            }
            if(intrst=="")
            {
                 e5.innerHTML="<font color=red>Please Enter your Interests !</font>";
                 flag=false;
            }
            else
            {
                 e5.innerHTML="";
            }
            if(dob=="")
            {
                 e6.innerHTML="<font color=red>D.O.B can't be empty !</font>";
                 flag=false;
            }
            else
            {
                 e6.innerHTML="";
            }
            return flag;
        }
        </script>
<title>SocialNet</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
</head>
<body>
     <%
        if(session.getAttribute("uid")==null)
        {
            response.sendRedirect("login.html");
        }
        %>
<div class="main">
  <div class="main_resize">
    <div class="header">
      <div class="logo">
        <h1><a href="#"><span>Social</span>Net</a></h1>
        <!--/searchform -->
        <div class="clr">
		</div>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="home.jsp">Home</a></li>
          <li><a href="friends.jsp">Friends</a></li>
          <li><a href="message.jsp">Message</a></li>
          <li><a href="groups.jsp">Groups</a></li>
          <li><a href="logout.jsp">Logout</a></li>
        </ul>
        <div class="clr"></div>
      </div>
      <div class="hbg"><img src="images/header_images.jpg" width="923" height="291" alt="" /></div>
    </div>
    <div class="content">
      <div class="content_bg">
        <br />
		<div style="position: absolute; width: 184px; height: 124px; z-index: 1; left: 300px; top: 518px; bottom: 613px;" id="layer1">
			<img src="<%=session.getAttribute("img")%>" height="100" width="100" /><br>
			Welcome: <%=session.getAttribute("uid")%>
			</div>
		<div style="position: absolute; width: 696px; height: 704px; z-index: 3; left: 521px; top: 520px" id="layer3">
			                            <%
                                try
                                {
                                  String qry="select ifnull(usrname,'')usrname,ifnull(usradd,'')usradd,ifnull(usrmob,'')usrmob ,ifnull(usrqualification,'')usrqualification,ifnull(usrinterest,'')usrinterest,ifnull(usrdob,'')usrdob from tbuser where usrid='"+session.getAttribute("uid")+"'";
                                  ResultSet rs=new DB().execute(qry);
                                  if(rs.next())
                                  {
                                %>
                                <form method="post" action="editprf2.jsp" name="f1" onsubmit="return check(f1)" style="height: 620px" class="style1">
					<h1><strong>EDIT PROFILE SECTION<br />
					<br />
					<br />
                                            </strong></h1>
                            <table>
                                <tr>
                                    <td>USER NAME</td>
                                    <td style="height: 60px">
                                                            <input name="Text1" value="<%=rs.getString("usrname")%>" type="text" id="a" style="width: 185px" /></td>
							<td style="height: 60px"><font size="2"><small><span id="d1"></span></small></font></td>
                                </tr>
                                                        <tr>
							<td style="height: 61px; width: 205px">ADDRESS</td>
							<td style="height: 61px">
							<input name="Text2" value="<%=rs.getString("usradd")%>" type="text" id="b" style="width: 187px" /></td>
							<td style="height: 61px"><font size="2"><small><span id="d2"></span></small></font></td>
						</tr>
                                                        
                                                        <tr>
							<td style="height: 61px; width: 205px">MOBILE</td>
							<td style="height: 61px">
							<input name="Text3" value="<%=rs.getString("usrmob")%>" type="text" id="c" style="width: 190px" /></td>
							<td style="height: 61px"><font size="2"><small><span id="d3"></span></small></font></td>
						</tr>
                                                        <tr>
                                                            <td style="height: 61px; width: 205px">QUALIFICATIONS</td>
                                                            <td style="height: 61px">
                                                            <input name="Text4" value="<%=rs.getString("usrqualification")%>" type="text" id="d" style="width: 190px" /></td>
                                                            <td style="height: 61px"><font size="2"><small><span id="d4"></span></small></font></td>
                                                        </tr>
                                                        
                                                        <tr>
                                                            <td style="height: 61px; width: 205px">INTERESTS</td>
                                                            <td style="height: 61px">
                                                            <input name="Text5" value="<%=rs.getString("usrinterest")%>" type="text" id="e" style="width: 190px" /></td>
                                                            <td style="height: 61px"><font size="2"><small><span id="d5"></span></small></font></td>
                                                        </tr>
                                                        
                                                        <tr>
                                                            <td style="height: 61px; width: 205px">D.O.B</td>
                                                            <td style="height: 61px">
                                                            <input name="Text6" value="<%=rs.getString("usrdob")%>" type="text" id="f" style="width: 190px" /></td>
                                                            <td style="height: 61px"><font size="2"><small><span id="d6"></span></small></font></td>
                                                        </tr>
                                                            
                                                             <tr>
                                                            <td style="height: 61px; width: 205px"></td>
                                                            <td style="height: 61px">
                                                                <input name="Submit1" value="UPDATE" type="submit" />&nbsp;</td>
                                                            <td style="height: 61px"></td>
                                                        </tr>
                                                        
                                                        
                                                        
                                                        
                            </table>
                                
                                    <%
                                                            }
                                                         }
                                                          catch(Exception e)
                                                            {
                                                                  System.out.println(e);
                                                            }

                                                            %>
			
			
			
			
			</div>
                                                            		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		
		
		<div style="position: absolute; width: 181px; height: 500px; z-index: 2; left: 304px; top: 657px" id="layer2">
			
			<ul class="sb_menu">
              <li class="active"><a href="editprf.jsp">EDIT PROFILE</a></li>
              <li><a href="editpass.jsp">EDIT PASSWORD</a></li>
              <li><a href="editpic.jsp">EDIT PICTURE</a></li>
              <li><a href="editsecurity.jsp">EDIT SECURITY SETTINGS</a></li>
                          </ul>
			</div>
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
        <div class="clr"></div>
      </div>
    </div>
  </div>
</div>

</body>
</html>