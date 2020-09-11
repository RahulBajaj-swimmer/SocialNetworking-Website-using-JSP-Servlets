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
	margin-top: 0px;
}
.style2 {
	margin-left: 0px;
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
    <div class="content" style="height: 891px">
      <div class="content_bg">
        <br />
		<div style="position: absolute; width: 184px; height: 124px; z-index: 1; left: 300px; top: 518px; bottom: 613px;" id="layer1">
			<img src="<%=session.getAttribute("img")%>" height="100" width="100" /><br>
			Welcome: <%=session.getAttribute("uid")%>
			</div>
		<div style="position: absolute; width: 696px; height: 704px; z-index: 3; left: 521px; top: 520px" id="layer3">
			<table style="width: 100%">
				<tr>
					<td style="height: 248px; width: 358px;">
					<div style="position: absolute; width: 275px; height: 180px; z-index: 1; left: 12px; top: 12px" id="layer4">
						<a href="searchfrd.jsp">
						<img alt="" src="images/searchfrnds.png" width="272" height="217" /></a></div>
					</td>
					
					<td style="height: 248px; width: 364px;"><a href="searchfrd.jsp"><h3>SEARCH FRIENDS</h3></a></td>
				</tr>
				<tr>
					<td style="height: 248px; width: 358px;">
					<div style="position: absolute; width: 237px; height: 195px; z-index: 2; left: 17px; top: 253px" id="layer5">
						<a href="checkreq.jsp">
						<img alt="" src="images/checkreq.jpg" width="268" height="216" class="style1" /></a></div>
					</td>
					<td style="height: 248px; width: 364px;"><a href="checkreq.jsp"><h3>CHECK INCOMING REQUESTS</h3></a></td>
				</tr>
				<tr>
					<td style="height: 221px; width: 358px;">
					<div style="position: absolute; width: 269px; height: 182px; z-index: 3; left: 25px; top: 502px" id="layer6">
						<a href="viewfrdlist.jsp">
						<img alt="" src="images/friendlist.png" width="267" height="204" class="style2" /></a></div>
					</td>
					<td style="height: 221px; width: 364px;"><a href="viewfrdlist.jsp"><h3>VIEW FRIEND LIST</h3></a></td>
				</tr>
			</table>
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