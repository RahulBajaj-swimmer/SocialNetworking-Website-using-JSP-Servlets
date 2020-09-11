<%@page import="java.sql.ResultSet"%>
<%@page import="Global.*" %>



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
.style2 {
	text-align: center;
	font-size: xx-large;
}
.style3 {
	font-size: large;
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
	&nbsp;&nbsp;&nbsp;<div style="position: absolute; width: 937px; height: 53px; z-index: 2; left: 215px; top: 417px" id="layer2" class="style2">
            <h1>FORGOT PASSWORD!</h1> </div>
	<div style="position: absolute; width: 811px; height: 403px; z-index: 3; left: 367px; top: 512px" id="layer3">
		
                    <%
    try
    {
        DB obj=new DB();
        String uid=request.getParameter("Text1");
        String sa=request.getParameter("Text4");
        String qry="select usrid from tbuser where usrid='"+uid+"' and usrsecans='"+sa+"'";
            ResultSet rs=obj.execute(qry);
            if(rs.next())
            {
                    %>
                    <form method="post" action="forgot2.jsp"  name="f1" onsubmit="return check(f1)">
                        <input type="hidden" name="id" value="<%=uid%>" >
            <table style="width: 100%">
				<tr>
					<td style="height: 76px; width: 338px" class="style3">ENTER 
					NEW PASSWORD :</td>
					<td style="height: 76px; width: 263px">
					<input name="Password1" type="password" id="a" /></td>
					<td style="height: 76px"><font size="2"><small><span id="d1"></span></small></font></td>
				</tr>
				<tr>
					<td style="height: 76px; width: 338px" class="style3">
					ENTER CONFIRM PASSWORD :</td>
					<td style="height: 76px; width: 263px">
					<input name="Password2" type="password" id="b"/></td>
					<td style="height: 76px"><font size="2"><small><span id="d2"></span></small></font></td>
				</tr>
				<tr>
					<td style="height: 76px; width: 338px"></td>
					<td style="height: 76px; width: 263px">
					<input name="Submit1" type="submit" value="RESET" id="a" style="width: 159px; height: 50px" /></td>
					<td style="height: 76px"><font size="2"><small><span id="d3"></span></small></font></td>
				</tr>
			</table>
		</form>
                        <%
                            }
               else
               {

                %>
                <h1>Invalid Answer !!</h1>
                <br>
                    <h3><a href="login.html">Try Again</a></h3>
                    
                    <%
                        }
}
catch(Exception e)
{
System.out.println(e);

}
%>
                    
	</div>
  </div>
</div>

</body>
</html>            
            
            
            
            
  