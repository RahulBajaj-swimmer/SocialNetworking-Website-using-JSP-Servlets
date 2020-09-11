<%@page import="java.sql.ResultSet"%>
<%@page import="Global.DB"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>SocialNet</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
.style1 {
	font-size: medium;
}
</style>
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
                            String id=request.getParameter("id");
                            String qry="select usrname,usradd,usrgen,usrmob,usrqualification,usrinterest,usrdob,userimg from tbuser where usrid='"+id+"'";
                            ResultSet rs=new DB().execute(qry);
                            if(rs.next())
                            {
                               String img=rs.getString("userimg");
                                              
                        %>
			<div style="position: absolute; width: 178px; height: 149px; z-index: 1; left: 26px; top: 67px" id="layer4">
                        </div>
			<div style="position: absolute; width: 437px; height: 613px; z-index: 2; left: 226px; top: 63px" id="layer5" class="style1">
				<table style="width: 100%">
					<tr>
						<td style="height: 50px; width: 171px">NAME</td>
                                                <td style="height: 50px"><%=rs.getString("usrname")%></td>
					</tr>
					<tr>
						<td style="height: 50px; width: 171px">ADDRESS</td>
						<td style="height: 50px"><%=rs.getString("usradd")%></td>
					</tr>
					<tr>
						<td style="height: 49px; width: 171px">GENDER</td>
						<td style="height: 49px"><%=rs.getString("usrgen")%></td>
					</tr>
					<tr>
						<td style="height: 49px; width: 171px">MOBILE</td>
						<td style="height: 49px"><%=rs.getString("usrmob")%></td>
					</tr>
					<tr>
						<td style="height: 50px; width: 171px">QUALIFICATIONS</td>
						<td style="height: 50px"><%=rs.getString("usrqualification")%></td>
					</tr>
					<tr>
						<td style="height: 50px; width: 171px">INTEREST</td>
						<td style="height: 50px"><%=rs.getString("usrinterest")%></td>
					</tr>
					<tr>
						<td style="height: 50px; width: 171px">D.O.B.</td>
						<td style="height: 50px"><%=rs.getString("usrdob")%></td>
					</tr>
					<tr>
						<td style="height: 50px; width: 171px"></td>
                                                <td style="height: 50px">
                                                    <%
                                                        try
                                                        {
                                                            String uid=(String)session.getAttribute("uid");
                                                            qry="select status from tbfriend where usrid='"+uid+"' and fid='"+id+"'";
                                                            rs=new DB().execute(qry);
                                                            if(rs.next())
                                                            {
                                                              int st=rs.getInt("status");
                                                              if(st==0)
                                                              {
                                                                out.println("<font color=red>Request is in pending state</font>");   
                                                              }
                                                              else
                                                              {
                                                                out.println("<font color=red>Already Connected!!</font>");   
                                                              }
                                                                  
                                                            }
                                                         else
                                                            {
                                                                qry="select status from tbfriend where usrid='"+id+"' and fid='"+uid+"'";
                                                                rs=new DB().execute(qry);
                                                                if(rs.next())
                                                                {
                                                                    int st=rs.getInt("status");
                                                                    if(st==0)
                                                                    {
                                                                        out.println("<font color=red>Waiting for request response</font>");
                                                                    }
                                                                }
                                                                else
                                                                {
                                                                %>
                                                                
                                                                <a href="sendreq.jsp?id=<%=id%>">SEND REQUEST</a>
                                                                <%
                                                                    }
                                                                }
                                                        }
                                                        catch(Exception e)
                                                        {
                                                          System.out.println(e);   
                                                        }
                                                        %>
                                                    
                                                    
                                                    
                                                    
                                                </td>
					</tr>
				</table>
			</div>
                        
                                                        
                                                        
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