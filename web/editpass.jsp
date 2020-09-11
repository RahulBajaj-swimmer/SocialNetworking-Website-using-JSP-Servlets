<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <script type="text/javascript">
        function check(f)
        {
            npwd=document.getElementById("a").value;
            cpwd=document.getElementById("b").value;
            var e1=document.getElementById("d1");
           var e2=document.getElementById("d2");
           var e3=document.getElementById("d3");
            flag=true;
            
            
            if(npwd==cpwd)
            {
                e3.innerHTML="";
            }
            else
            {
                e3.innerHTML="<font color=red>Password and Confirm Password didnt Match !!</font>";
                flag=false;
            }
             if(npwd=="")
            {
                e1.innerHTML="<font color=red>Password field can't be empty !!</font>";
                flag=false;
            }
            else if(npwd.length<8)
            {
                 e1.innerHTML="<font color=red>Password length must be greater than 8 characters !!</font>";
                 flag=false;
            }
            else if(npwd.search(/[0-9]/)==-1)
            {
                 e1.innerHTML="<font color=red>Atleast 1 Numeric Value !!</font>";
                 flag=false;
                
            }
            else if(npwd.search(/[a-z]/)==-1)
            {
                e1.innerHTML="<font color=red>Atleast 1 Lower Case alphabet</font>";
                flag=false;
            }
            else if(npwd.search(/[A-Z]/)==-1)
            {
                e1.innerHTML="<font color=red>Atleast 1 Upper Case alphabet</font>";
                flag=false;
            }
            else if(npwd.search(/[!\@\#\$\%\^\&\(\)\_\+\*\.\,\;\{\}\[\]\:\~\']/)==-1)
            {
                e1.innerHTML="<font color=red>Atleast 1 Special Character</font>";
                flag=false;
            }
            else
            {
                 e1.innerHTML="";
            }
            
            if(cpwd=="")
            {
                 e2.innerHTML="<font color=red>Confirm Password can't be empty !!</font>";
                 flag=false;
            }
            else
            {
                 e2.innerHTML="";
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
                    <h1>CHANGE PASSWORD</h1><br />
			<br />
			<br />
                        <form method="post" action="editpass2.jsp" name="f1" onsubmit="return check(f1)" style="height: 536px">
				<table style="width: 100%">
					<tr>
						<td style="height: 66px; width: 225px" class="style2">
						NEW PASSWORD:</td>
						<td style="height: 66px; width: 266px">
						<input name="Password1" type="password" id="a"style="width: 240px" /></td>
                                                <td style="height: 66px" ><font size="2"><small><span id="d1"></span></small></font></td>
					</tr>
					<tr>
						<td style="height: 65px; width: 225px" class="style2">
						CONFIRM PASSWORD:</td>
						<td style="height: 65px; width: 266px">
						<input name="Password2" type="password" id="b" style="width: 239px" /></td>
                                                <td style="height: 65px"><font size="2"><small><span id="d2"></span></small></font></td>
					</tr>
					<tr>
						<td style="height: 65px; width: 225px"></td>
						<td style="height: 65px; width: 266px">
						<input name="Submit1" type="submit" value="UPDATE" id="a" style="width: 204px; height: 46px" /></td>
                                                <td style="height: 65px"><font size="2"><small><span id="d3"></span></small></font></td>
					</tr>
				</table>
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