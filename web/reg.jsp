<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
     <script type="text/javascript">
        function check(f)
        {
            un=document.getElementById("a").value;
            pwd=document.getElementById("b").value;
            seca=document.getElementById("c").value;
            var e1=document.getElementById("d1");
           var e2=document.getElementById("d2");
           var e3=document.getElementById("d3");
            flag=true;
            
            
             if(un=="")
            {
                e1.innerHTML="<font color=red>User Name field can't be empty !!</font>";
                flag=false;
            }
            else
            {
                e1.innerHTML="";
            }
            if(pwd=="")
            {
                 e2.innerHTML="<font color=red>Password Field can't be empty !!</font>";
                 flag=false;
            }
            else if(pwd.length<8)
            {
                 e2.innerHTML="<font color=red>Password length must be greater than 8 characters !!</font>";
                 flag=false;
            }
            else if(pwd.search(/[0-9]/)==-1)
            {
                 e2.innerHTML="<font color=red>Atleast 1 Numeric Value !!</font>";
                 flag=false;
                
            }
            else if(pwd.search(/[a-z]/)==-1)
            {
                e2.innerHTML="<font color=red>Atleast 1 Lower Case alphabet</font>";
                flag=false;
            }
            else if(pwd.search(/[A-Z]/)==-1)
            {
                e2.innerHTML="<font color=red>Atleast 1 Upper Case alphabet</font>";
                flag=false;
            }
            else if(pwd.search(/[!\@\#\$\%\^\&\(\)\_\+\*\.\,\;\{\}\[\]\:\~\']/)==-1)
            {
                e2.innerHTML="<font color=red>Atleast 1 Special Character</font>";
                flag=false;
            }
            else
            {
                 e2.innerHTML="";
            }
            
            if(seca=="")
            {
                 e3.innerHTML="<font color=red>Security Answer Field can't be empty !!</font>";
                 flag=false;
            }
            else
            {
                 e3.innerHTML="";
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
.style4 {
	margin-left: 26px;
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
		<h1>REGISTER USER!!</h1></div>
	<div style="position: absolute; width: 811px; height: 403px; z-index: 3; left: 367px; top: 512px" id="layer3">
		<form method="post" action="reg1.jsp"  name="f1" onsubmit="return check(f1)" style="height: 466px">
		<table style="width: 100%">
			<tr class="style3">
				<td style="height: 51px; width: 266px">USER NAME:</td>
				<td style="height: 51px; width: 362px">
				<input name="Text1" type="text" id="a" style="width: 339px" /></td>
				<td style="height: 51px"><font size="2"><small><span id="d1"></span></small></font></td>
			</tr>
			<tr class="style3">
				<td style="height: 51px; width: 266px">PASSWORD:</td>
				<td style="height: 51px; width: 362px">
				<input name="Password1" type="password" id="b" style="width: 336px" /></td>
				<td style="height: 51px"><font size="2"><small><span id="d2"></span></small></font></td>
			</tr>
			<tr class="style3">
				<td style="height: 51px; width: 266px">SECURITY QUESTION:</td>
				<td style="height: 51px; width: 362px">
				<select name="Select2" style="width: 336px">
				<option>Which is your Favourite Movie?</option>
				<option>Which is your Favourite Sports?</option>
				<option>What is your Name of Pet?</option>
				</select></td>
				<td style="height: 51px"></td>
			</tr>
			<tr class="style3">
				<td style="height: 51px; width: 266px">SECURITY ANSWER:</td>
					<td style="height: 51px; width: 362px">
				<input name="Text2" type="text" id="c" style="width: 334px" /></td>
				<td style="height: 51px"><font size="2"><small><span id="d3"></span></small></font></td>
			</tr>
			<tr>
				<td style="height: 51px; width: 266px" class="style3">GENDER</td>
				<td style="height: 51px; width: 362px">
				&nbsp;&nbsp;&nbsp;&nbsp;
				<input name="Radio" type="radio" checked="checked" value="MALE"/>MALE
				<input name="Radio" type="radio"  value="FEMALE"/>FEMALE
				<input name="Radio" type="radio"  value="OTHERS"/>OTHERS</td>
				<td style="height: 51px"></td>
			</tr>
		</table>
			<table style="width: 100%; height: 67px">
				<tr>
					<td style="width: 234px">&nbsp;</td>
					<td>
					<input name="submit" type="submit" value="REGISTER" class="style4" style="width: 298px; height: 62px" /></td>
					<td>&nbsp;</td>
				</tr>
			</table>
		</form>
	</div>
  </div>
</div>

</body>
</html>