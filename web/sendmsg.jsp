<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
        <script type="text/javascript">
        function check(f)
        {
            un=document.getElementById("a").value;
            var e1=document.getElementById("d1");
            flag=true;
            
             if(un=="")
            {
                e1.innerHTML="<font color=red>Please enter message here !!</font>";
                flag=false;
            }
            else
            {
                e1.innerHTML="";
            }
            
            return flag;
        }
        </script>
<title>SocialNet By-RAHUL BAJAJ</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
.style2 {
	font-size: x-large;
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
		
                    <span class="style2"><strong>
		
                    <%
                        String fid=request.getParameter("fid");
                        session.setAttribute("fid",fid);
                        
                        %>
                        
                        SEND MESSAGE TO :</strong></span> <font color="red">
					<span class="style2"><strong><%=fid%></strong></span></font>
                        <span class="style2"><strong>
                        <br><br>
					</strong></span>
                        <form method="post" action="sendmsg2.jsp" name="f1" onsubmit="return check(f1)" style="height: 482px">
					<input name="Text1" type="text" id="a" style="height: 91px; width: 660px" />
                                        <br>
                                            <font size="4"><small><span id="d1"></span></small></font>
					<br><br>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <input name="Submit1" type="submit" onclick="return check(f1)" value="SEND MESSAGE" style="width: 212px; height: 84px" />
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