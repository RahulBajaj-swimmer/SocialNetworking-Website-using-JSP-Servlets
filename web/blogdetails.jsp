<%@page import="java.sql.ResultSet"%>
<%@page import="Global.DB"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
         <script type="text/javascript">
        function check(f)
        {
            blog=document.getElementById("a").value;
            var e1=document.getElementById("d1");
            flag=true;
            
             if(blog=="")
            {
                e1.innerHTML="<font color=red>Please Enter Comment !!</font>";
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
                    <%
                        try
                        {
                        String tid=request.getParameter("tid");
                        session.setAttribute("tid",tid);
                        String qry="select topicdesc,topicdate,topictime,topicusrid from tbtopic where topicid="+tid;
                        DB obj=new DB();
                        ResultSet rs=obj.execute(qry);
                        if(rs.next())
                        {
                        
                        %>
                        <p style="border: 1 px solid black; padding: 10 px; color: red; font-size: large"><%=rs.getString("topicdesc")%>
                                <br><br>
                                        Posted by: <%=rs.getString("topicusrid")%><br>
                                                <%=rs.getString("topicdate")%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString("topictime")%>
                                                </p>
                                                <%
                        }
qry="select a.commentdesc,a.commentdate,a.commenttime,a.commentusrid,b.userimg from tbtopiccomment a,tbuser b where a.commenttopicid="+tid+" and b.usrid=a.commentusrid";
rs=obj.execute(qry);
out.println("<table>");
while(rs.next())
{
%>
<tr>
    <td>
        <img src="<%=rs.getString("userimg")%>" height="80" width="80">
    </td>
    <td>
        <br><br>
        <font color="black" size="3"><%=rs.getString("commentdesc")%></font><br>
                Posted by: <%=rs.getString("commentusrid")%><br>
                    <small><%=rs.getString("commentdate")%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString("commenttime")%></small><br><br>
                    
    </td>
</tr>
                    <%
}
out.println("</table>");
                                                  

                                                    %>
                                                    
                                                    <br><br>
                                                            <form action="postcmt.jsp" method="post" name="f1" onsubmit="return check(f1)">
                                                        <input type="text" name="t1" id="a" size="30">
                                                            <br>
                                                                <font size="2"><small><span id="d1"></span></small></font>
                                                                <br>
                                                                <input type="submit" value="POST COMMENT">
                                                                    </form>
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