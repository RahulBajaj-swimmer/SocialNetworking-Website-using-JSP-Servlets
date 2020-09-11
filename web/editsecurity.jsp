<%@page import="Global.DB"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
        <script type="text/javascript">
        function check(f)
        {
            seca=document.getElementById("a").value;
            var e1=document.getElementById("d1");
            flag=true;
            
             if(seca=="")
            {
                e1.innerHTML="<font color=red>Please enter Security Answer !!</font>";
                flag=false;
            }
            else
            {
                e1.innerHTML="";
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
<style type="text/css">
.style1 {
	font-size: xx-large;
}
.style2 {
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
		<div style="position: absolute; width: 696px; height: 704px; z-index: 3; left: 521px; top: 520px" id="layer3" class="style1">
                    
                    
                     <form method="post" action="editsec2.jsp" name="f1" onsubmit="return check(f1)" style="height: 536px">
                  
			<strong><br />
                            <h1>EDIT SECURITY SETTINGS</h1><br />
			<br />
			<br />
			<br />
			</strong>
			<table style="width: 100%">
				<tr>
					<td style="height: 61px; width: 245px" class="style2">
					SECURITY QUESTION:</td>
					<strong>
					<td style="height: 61px">
					<select  name="Select1" style="width: 324px">
					<option>Which is your Favourite Movie?</option>
				<option>Which is your Favourite Sports?</option>
				<option>What is your Name of Pet?</option>
					</select></td>
				</tr>
				<tr>
					<td style="height: 62px; width: 245px" class="style2">
					SECURITY ANSWER:</td>
					<td style="height: 62px">
					<input name="Text1" type="text" id="a" style="width: 328px" /></td>
                                        <td><font size="2"><small><span id="d1"></span></small></font></td>
				</tr>
				<tr>
					<td style="height: 61px; width: 245px"></td>
					<td style="height: 61px">
                                            <input name="Submit1" type="submit" value="UPDATE" onclick="return check(f1)" style="width: 184px; height: 48px" /></td>
				</tr>
			</table>
			</strong>
                                    </form>
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