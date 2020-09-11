<%@page import="java.sql.ResultSet"%>
<%@page import="Global.*" %>


        
        
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
                e1.innerHTML="<font color=red>Security Answer field can't be empty !!</font>";
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
.style2 {
	text-align: center;
	font-size: xx-large;
}
.style3 {
	font-size: medium;
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
	<div style="position: absolute; width: 811px; height: 403px; z-index: 3; left: 367px; top: 560px" id="layer3">
            <%
    try
    {
        DB obj=new DB();
        String uid=request.getParameter("Text1");
        //String seca=request.getParameter("Text1");
        
        ResultSet rs=obj.execute("select usrsecques from tbuser where usrid='"+uid+"'");
           if(rs.next())
        { 
        
        %>
        <form method="post" action="forgot4.jsp" name="f1">
               <table style="width: 100%">
				<tr>
					<td style="height: 66px; width: 379px" class="style3">
					YOUR NAME:</td>
                                    <td style="height: 66px">
									<input name="Text1" style="background: #d9d9d9; width: 241px;" type="text" value="<%=uid%>" readonly /></td>
					<td style="height: 66px"></td>
				</tr>
				<tr>
					<td style="height: 67px; width: 379px" class="style3">
					YOUR SECURITY QUESTION:</td>
                                    <td style="height: 67px">
									<input name="Text3" type="text" style="background: #d9d9d9; width: 239px;" readonly value="<%=rs.getString("usrsecques")%>" /></td>
					<td style="height: 67px"></td>
				</tr>
				<tr>
					<td style="height: 66px; width: 379px" class="style3">ENTER 
					YOUR SECURITY ANSWER:</td>
					<td style="height: 66px">
					<input name="Text4" type="text" id="a" style="width: 238px" /></td>
					<td style="height: 66px"><font size="2"><small><span id="d1"></span></small></font></td>
				</tr>
				<tr>
					<td style="height: 64px; width: 379px"></td>
					<td style="height: 64px">
                                            <input name="Submit1" type="submit" value="VERIFY" onclick="return check(f1)"n style="width: 125px; height: 41px" /></td>
					<td style="height: 64px"></td>
				</tr>
			</table>
        </form>
        <%
           
                           
                
        }
        else
         {
         %>
       
         <h1>Invalid User ID!!</h1>
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