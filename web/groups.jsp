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
	margin-left: 0px;
}
.style2 {
	margin-top: 0px;
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
    <div class="content" style="height: 731px">
      <div class="content_bg">
        <br />
		<div style="position: absolute; width: 184px; height: 124px; z-index: 1; left: 300px; top: 518px; bottom: 613px;" id="layer1">
			<img src="<%=session.getAttribute("img")%>" height="100" width="100" /><br>
			Welcome: <%=session.getAttribute("uid")%>
			</div>
		<div style="position: absolute; width: 696px; height: 1138px; z-index: 3; left: 521px; top: 520px" id="layer3">
                    
                    <table style="width: 100%">
						<tr>
							<td style="height: 220px; width: 365px;">
							<div style="position: absolute; width: 223px; height: 199px; z-index: 1; left: 39px; top: 10px; bottom: 924px;" id="layer4">
								<a href="creategrp.jsp"><img alt="" src="images/createnewgrp.gif" width="262" height="200" /></a></div>
							</td>
							<td style="height: 220px; width: 299px;"><h3><a href="creategrp.jsp">CREATE NEW GROUP</a></h3></td>
						</tr>
						<tr>
							<td style="height: 216px; width: 365px;">
							<div style="position: absolute; width: 254px; height: 202px; z-index: 2; left: 42px; top: 227px" id="layer5">
								<a href="searchgrp.jsp">
								<img alt="" src="images/searchgrp.jpg" width="257" height="204" class="style1" /></a></div>
							</td>
							<td style="height: 216px; width: 299px;"><h3><a href="searchgrp.jsp">SEARCH GROUPS</a></h3></td>
						</tr>
						<tr>
							<td style="height: 229px; width: 365px;">
							<div style="position: absolute; width: 265px; height: 212px; z-index: 3; left: 41px; top: 448px" id="layer6">
								<a href="viewjoingrp.jsp"><img alt="" src="images/joined.png" width="261" height="207" class="style2" /></a></div>
							</td>
							<td style="height: 229px; width: 299px;"><h3><a href="viewjoingrp.jsp">VIEW JOINED GROUPS</a></h3></td>
						</tr>
					</table>
                                
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