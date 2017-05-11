<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
int id = (int)request.getAttribute("id");
String name = (String)request.getAttribute("name");
String url = (String)request.getAttribute("url");
int alexa = (int)request.getAttribute("alexa");
String country = (String)request.getAttribute("country");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
 <title>top</title>
 <link href="<%=request.getContextPath()%>/css/index.css" rel="stylesheet" type="text/css"/>
 
 <!-- google CDN Jquery-->
 <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.0/jquery.min.js"></script>
 <!-- google map api -->
 <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCnLaPr-SA9zYmqWfLthMAPscRuIdyHzeA&sensor=false"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#button1").click(function(){
		$("#links").css("background-color","yellow");
	});
	//request html file from servlet.
	$("#button2").click(function(){
		$.get("MyServlet",function(result){
			$("#top_welcome").html(result);
			$("#links").css("background-color","yellow");
		});
	});

});

function initialize(){
	var mapProp = {
	        center:new google.maps.LatLng(51.508742,-0.120850),
	        zoom:5,
	        mapTypeId:google.maps.MapTypeId.ROADMAP
	    };
	    var map=new google.maps.Map(document.getElementById("googleMap"), mapProp);
}
google.maps.event.addDomListener(window, 'load', initialize);
</script>
</head>
<body>
<div align="center" name="main" id="main">
	<div align="center" name="top" id="top">
      <div id="logo">
       <div align="center" name="i_logo" id="i_logo"> </div>      
      </div>	
   	<div align="center" name ="menu" id="menu">
			<ul>
				<li id="index"><a href="#i_top">Top</a></li>
				<li id="maps"><a href="#maps">maps</a></li>
				<li id="album"><a href="#albums">Album</a></li>
				<li id="aboutme"><a href="#footer">About me</a></li>			
			</ul>   	
   	</div>
	</div>
<!--top,contents-->
	<div align="left" name="F_button" id="f_button">
	   <div align="center" name="B_button" id="b_button">   
   	  <a name="i_top" style="text-decoration: none;" href="#i_top">top</a>
   	</div>

   </div>
	<div align="left" name="contents" id="contents">
   	<div align="center" id="top_welcome"><h3><font color="green"> <marquee behavior="alternate"> Welcome to animeWorld.</marquee></font></h3> </div>
	</div>
	<div id="links" style="height: 20px;">
	<table class="linkTable">
		<TR>
			<td>ID</td>
			<td>NAME</td>
			<td>URL</td>
			<td>ALEXA</td>
			<td>COUNTRY</td>
		</TR>
		<TR>
			<td><%=id %></td>
			<td><%=name %></td>
			<td><%=url %></td>
			<td><%=alexa %></td>
			<td><%=country %></td>
		</TR>
	</table>
	<button id="button1">Click me1</button><br/>
	<button id="button2">Click me2</button><br/>
	</div>
<!--blogs-->
	<div align="left" name="F_button" id="f_button">
	   <div align="center" name="B_button" id="b_button">   
   	  <a name="tblog" style="text-decoration: none;" href="#maps">MAP</a>
   	</div>
   	<div align="center" name="B_T_top" id="b_t_top">   
   	  <a name="top" style="text-decoration: none;" href="#top">Back to top</a>
   	</div>
   </div>
	<div align="left" name="blogs" id="blogs">
	<div align="center" name="B_content" id="googleMap" style="width:100%;height:100%;"></div>
	</div>
<!--albums-->
	<div align="left" name="F_button" id="f_button">
	   <div align="center" name="B_button" id="b_button">   
   	  <a name="albums" style="text-decoration: none;" href="#albums">Album</a>
   	</div>
   	<div align="center" name="B_T_top" id="b_t_top">   
   	  <a name="top" style="text-decoration: none;" href="#top">Back to top</a>
   	</div>
   </div>
	<div align="left" name="d_album" id="d_album">
		<div align="center" name="Nav_album" id="nav_album">
      	<div><a href="#image1" target="_parent"><img src="images/album/1.JPG" alt="" height="145px" border="10px"></a></div>
      	<div><a href="#image2" target="_parent"><img src="images/album/2.JPG" alt="" height="145px" border="10px"></a></div>
      	<div><a href="#image3" target="_parent"><img src="images/album/3.JPG" alt="" height="145px" border="10px"></a></div>
      	<div><a href="#image4" target="_parent"><img src="images/album/4.JPG" alt="" height="145px" border="10px"></a></div>
      	<div><a href="#image5" target="_parent"><img src="images/album/5.JPG" alt="" height="145px" border="10px"></a></div>
      </div>
      <a>1&nbsp</a>
      <div id="images">
			<div align="center" name="Image1" id="image1"></div>
			<div align="center" name="Image2" id="image2"></div>
			<div align="center" name="Image3" id="image3"></div>
			<div align="center" name="Image4" id="image4"></div>
			<div align="center" name="Image5" id="image5"></div>     
      </div>	
	</div>
<div style="height: 5px;"></div>
<!--footer-->
	<div align="left" name="F_button" id="f_button">
	   <div align="center" name="B_button" id="b_button">   
   	  <a name="footer" style="text-decoration: none;" href="#footer">About Me</a>
   	</div>
   	<div align="center" name="B_T_top" id="b_t_top">   
   	  <a name="top" style="text-decoration: none;" href="#top">Back to top</a>
   	</div>
   </div>		
	<div align="left" name="footer" id="footer">
	<a>&nbsp;</a>
	<div align="center"><h3><font color="green"> Thanks for the visiting!</font></h3> </div>
		<div align="center" name="n_footer">
			<table>
				<tr>
					<td><a>Designed by:Kinka Tan&nbsp;&nbsp;&nbsp;&nbsp;</a></td>
					<td>From:<a href="http://www.neu.edu.cn/">NorthEast University</a></td>
				</tr>
			</table>
		</div>
		<div align="center" name="n_address" id="i_address">
		<br>
			
			<a>Address:No.11, Lane 3, WenHua Road, HePing District, Shenyang, Liaoning, China 110819</a><br>
			<a>Email:<a href="mailto:xxxxxxxx@qq.com">xxxxxxxx@qq.com</a></a>
			
		</div>
	</div>
</div>
</body>
</html>	