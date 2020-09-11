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
</head>
<body>
    
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
      
      <div class="hbg"><img src="images/header_images.jpg" width="923" height="291" alt="" /></div>
    </div>
    <div class="content">
      <div class="content_bg">
        <br />
		<div style="position: absolute; width: 184px; height: 124px; z-index: 1; left: 300px; top: 518px; bottom: 613px;" id="layer1">
		
			
			</div>
		<div style="position: absolute; width: 696px; height: 704px; z-index: 3; left: 521px; top: 520px" id="layer3">
                    <%
                        try
                        {
                        DB obj=new DB();
                        
                        
                        String pwd=request.getParameter("Password2");
                        String qry="update tbuser set usrpwd='"+pwd+"' where usrid='"+request.getParameter("id")+"'";
                            obj.update(qry);
                            System.out.println(qry);
                    %>
                    <h1>Password Reset Successfully</h1>
                    <br><br>
                            <h2><a href="login.html">Click Here to go to Login Page</a></h2>
                                    <%
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