<%@page import="Global.*" %>

<%
    try
    {
        DB obj=new DB();
        String uid=request.getParameter("Text1");
        String pwd=request.getParameter("Password1");
        String secq=request.getParameter("Select2");
        String seca=request.getParameter("Text2");
        String gen=request.getParameter("Radio");
        
        String qry="insert into tbuser (usrid,usrpwd,usrsecques,usrsecans,usrgen, userimg) values ('"+uid+"','"+pwd+"','"+secq+"','"+seca+"','"+gen+"','images/default.jpeg')";
        obj.update(qry);%>
        
        
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
.style2 {
	text-align: center;
	font-size: xx-large;
}
.style3 {
	margin-left: 0px;
	margin-top: 0px;
}
</style>
</head>
<body>
    
<div class="main">
  <div class="main_resize" style="width: 950px; height: 973px">
    <div class="header">
		<div class="logo">
			<h1><a href="#"><span>Social</span>Net</a></h1>
		</div>
&nbsp;
        <!--/searchform -->
        <div class="clr">
		</div>
		<div class="clr">
			<img src="images/header_images.jpg" width="923" height="291" alt="" /></div>
	</div>
	&nbsp;<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
<div style="position: absolute; width: 937px; height: 53px; z-index: 2; left: 215px; top: 417px" id="layer2" class="style2">
    <h1>REGISTERED SUCCESSFULLY!</h1></div>
<h2><a href="login.html">Click here to go to Login Page</a></h2>
	<img alt="" src="images/abc.jpg" width="698" height="397" class="style3" /></div>
        
</div>

</body>
</html>
        
        
        
        
        
        
        <%  
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
    %>