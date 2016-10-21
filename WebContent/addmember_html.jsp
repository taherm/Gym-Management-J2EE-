<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="mlogin.jsp">Please Login</a>
<%} else {
%>
<!DOCTYPE html>
<html>
<head>
<title>Fit Point Manager portal</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta property="og:title" content="Vide" />
<meta name="keywords" content="Fit Point Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- js -->
   <script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<!-- Custom Theme files -->
<!--webfont-->
<link href='//fonts.googleapis.com/css?family=Alegreya+Sans:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,800,800italic,900,900italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->

</head>
<body>
<div class="page-head">
	<div class="container">
			<div class="navigation">
				<div class="logo">
					<h1>
						<a class="navbar-brand link link--yaku" href="index.html"><span>F</span><span>I</span><span>T</span><span>P</span><span>O</span><span>I</span><span>N</span><span>T</span></a>
					</h1>
				</div>
				<div class="top-nav">
					<span class="menu"><img src="images/menu.png" alt=" " /></span>
					<ul class="nav1 nav nav-wil cl-effect-11" id="cl-effect-11">
						<li><a  class="active" href="addmember_html.jsp">Add Members</a></li>
						<li><a  class="active" href="viewmem.jsp">View Member Details</a></li>
						<li><a class="active" href="addstock_html.jsp">Add Stock</a></li>
						<li><a class="active" href="viewstock.jsp">View Stock Details</a></li>
						<li><a class="active" href="viewbatch.jsp">View Batch Details </a></li>
						<li><a class="active" href="lo.jsp">Logout </a></li>
					</ul>
						<!-- script-for-menu -->
							<script>
							   $( "span.menu" ).click(function() {
								 $( "ul.nav1" ).slideToggle( 300, function() {
								 // Animation complete.
								  });
								 });
							</script>
						<!-- /script-for-menu -->
				</div>
				<div class="clearfix"></div>
			</div>
	</div>
</div>

<div class="about">
	<div class="container">
		<h2 class="tittle"><b>Register Members</b></h2>
		<form method="post" action="regmem.jsp">
            <center>
            <table frame="box"  cellpadding="5"style="border-color:#ed2553">
                <thead>
                    <tr>
                        <th colspan="2"width="400"height="50"><center><h3 class="tittle"><b>Enter Member Information Here</b></h3></center></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td width="400"height="50"><center><h3 style="color:#ed2553">First Name</h3></center></td>
                        <td width="400"height="50"><center><input type="text" name="fname" id="name" style="width:300px;height:30px" value="" onblur="javascript:valname(this.value)"/><center></td>
                    </tr>
                    <tr>
                        <td width="400"height="50"><center><h3 style="color:#ed2553">Last Name</h3></center></td>
                        <td width="400"height="50"><center><input type="text" name="lname" id="lname"style="width:300px;height:30px" value="" onblur="javascript:vallname(this.value)" /><center></td>
                    </tr>
                    <tr>
                        <td width="400"height="50"><center><h3 style="color:#ed2553">Email</h3></center></td>
                        <td  width="400"height="50"><center><input type="text" name="email"id="em"style="width:300px;height:30px" value=""onblur="javascript:valemail(this.value)" /><center></td>
                    </tr>
                    <tr>
                        <td width="400"height="50"><center><h3 style="color:#ed2553">User Name</h3></center></td>
                        <td width="400"height="50""><center><input type="text" name="uname"id="unm" style="width:300px;height:30px"value=""onblur="javascript:valuname(this.value)" /><center></td>
                    </tr>
                    <tr>
                        <td width="400"height="50"><center><h3 style="color:#ed2553">Password</h3></center></td>
                        <td width="400"height="50"><center><input type="password" name="pass" id="wt"style="width:300px;height:30px" value="" onblur="javascript:valpass(this.value)"/><center></td>
                    </tr>
                    <tr>
                        <td width="400"height="50"><center><h3 style="color:#ed2553">Weight</h3></center></td>
                        <td width="400"height="50"><center><input type="text" name="weight"id="em"style="width:300px;height:30px" value=""onblur="javascript:valwt(this.value)" /><center></td>
                    </tr>
                    <tr>
                        <td width="400"height="50"><center><h3 style="color:#ed2553">Height</h3></center></td>
                        <td width="400"height="50"><center><input type="text" name="height"id="ht"style="width:300px;height:30px" value=""onblur="javascript:valht(this.value)" /><center></td>
                    </tr>
                    <tr>
                        <td width="400"height="50"><center><h3 style="color:#ed2553">Trainer</h3></center></td>
                        <td width="400"height="50"><center><input type="text" name="trainer"id="tr"style="width:300px;height:30px" value="" onblur="javascript:valtr(this.value)"/><center></td>
                    </tr>
                    <tr>
                        <td width="400"height="50"><center><h3 style="color:#ed2553">Batch</h3></center></td>
                        <td width="400"height="50"><center><input type="text" name="batch"id="bt" style="width:300px;height:30px"value=""onblur="javascript:valbt(this.value)" /><center></td>
                    </tr>
                    <tr>
                        <td width="400"height="50"><center><input type="submit"class="tittle"style="width:100px;height:30px;background-color:#ed2553;font-weight:bold;color:white" value="SUBMIT" /></center></td>
                        <td width="400"height="50"><center><input type="reset"class="tittle" style="width:100px;height:30px;background-color:#ed2553;font-weight:bold;color:white"value="RESET" /></center></td>
                    </tr>
                    
                </tbody>
            </table>
            </center>
            <script>
function valname(name)
{
	
   var pattern=/[^a-z|^A-Z|^\s]/;
if(pattern.test(name))
{
alert("Only alphabets from a-z and A-Z are allowed");
document.getElementById("name").focus();
document.getElementById("name").value = "";
}
}
function valtr(name)
{
	
   var pattern=/[^a-z|^A-Z|^\s]/;
if(pattern.test(name))
{
alert("Only alphabets from a-z and A-Z are allowed");
document.getElementById("tr").focus();
document.getElementById("tr").value = "";
}
}

function valbt(name)
{
	
   var pattern=/[^a-z|^A-Z||^0-9|^\s]/;
if(pattern.test(name))
{
alert("Only alphabets from a-z and A-Z are allowed");
document.getElementById("bt").focus();
document.getElementById("bt").value = "";
}
}

function vallname(name)
{
	
   var pattern=/[^a-z|^A-Z|^\s]/;
if(pattern.test(name))
{
alert("Only alphabets from a-z and A-Z are allowed");
document.getElementById("lname").focus();
document.getElementById("lname").value = "";
}
}

function valuname(name)
{
	
   var pattern=/[^a-z|^A-Z|^\s]/;
if(pattern.test(name))
{
alert("Only alphabets from a-z and A-Z are allowed");
document.getElementById("uname").focus();
document.getElementById("uname").value = "";
}
}

function valadd(name)
{
	
   var pattern=/[^0-9][^a-z|^A-Z|^\s]/;
if(pattern.test(name))
{
alert("Enter Valid Address");
document.getElementById("name").focus();
document.getElementById("name").value = "";


}

}
function valemail(email)
{
	
   var pattern=/^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;

if(!pattern.test(email))
{
alert("Enter valid E-mail ID");
//document.getElementById("em").focus();
document.getElementById("em").value = "";
 
}
}


function valpass(pass)
{
	
   var pattern=/[a-z0-9]{6,40}$/;
if(!pattern.test(pass))
{
alert("Password should be min 6 characters");
document.getElementById("pass").focus();
document.getElementById("pass").value = "";

}

}

function valwt(pass)
{
	
   var pattern=(/^\d{0,3}$/);
if(!pattern.test(pass))
{
alert("Enter vaild weight");
document.getElementById("wt").focus();
document.getElementById("wt").value = "";
 
}

}

function valht(pass)
{
	
   var pattern=(/^\d{0,3}$/);
if(!pattern.test(pass))
{
alert("Enter vaild height");
document.getElementById("ht").focus();
document.getElementById("ht").value = "";

}

}
 </script>	
	</div>
</div>
<div class="abt-bottom">
	<div class="container">
		<h2 class="tittle">Our team</h2>
		<div class="team-grids">
			<div class="col-md-3 team-gd text-center">
				<div class="morph pic">
					<img src="images/vk.jpg"width="30"height="120" alt="">
				</div>
				<h4>Vicky</h4>
				<p>FitPoint Trainer
				specialist in gym training
				for men and women.</p>
			</div>
			<div class="col-md-3 team-gd text-center">
				<div class="morph pic">
					<img src="images/toof.jpg"width="30"height="120" alt="">
				</div>
				<h4>Taher</h4>
				<p>FitPoint Trainer
				specialist in gym training
				for men and women.</p>
			</div>
			<div class="col-md-3 team-gd text-center">
				<div class="morph pic">
					<img src="images/kar.jpg"width="30"height="120" alt="">
				</div>
				<h4>Karthik</h4>
				<p>FitPoint Trainer
				specialist in gym training
				for men and women.</p>
			</div>
			<div class="col-md-3 team-gd text-center">
				<div class="morph pic">
					<img src="images/pash.jpg" width="30"height="120"alt="">
				</div>
				<h4>Pasha</h4>
				<p>FitPoint Trainer
				specialist in gym training
				for men and women.</p>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!--footer-top-->
<div class="footer-top">
	<div class="container">
		<div class="footer-left">
			<h3>INFORMATION</h3>
			<p>This site was developed to automate the functionality of a gym and its management for effective fuctioning.</p>
			<ul>
				<li>The company name <span>toofan dynasty,</span>Glasglow Dr 40 Fe 72.  </li>
				<li>1234567890  </li>
				<li><a href="mailto:info@example.com">toofan@example.com</a> </li>
			</ul>
		</div>
		
		<div class="footer-right">
			<h3>SUBSCRIBE NOW</h3>
			<p>Subscribe to get information regarding us </p>
			<form>
				<input type="text" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
				<input type="submit" value=" ">
			</form>
		</div>
		
									
		<div class="clearfix"></div>
	</div>
</div> 
<!--copy right-->
<div class="copyright">
	<div class="container">
		<div class="copy-left">
			<p> &copy; 2016 Fit Point. All Rights Reserved | Design by  <a href="http://w3layouts.com/"> W3layouts</a></p>
		</div>
		<div class="copy-right">
			<ul>
				<li><a class="fb1" href="#"></a></li>
				<li><a class="fb2" href="#"></a></li>
				<li><a class="fb3" href="#"></a></li>
				<li><a class="fb4" href="#"></a></li>
				<li><a class="fb5" href="#"></a></li>
			</ul>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!--//copy right-->
<!-- smooth scrolling -->
	<script type="text/javascript">
		$(document).ready(function() {
		/*
			var defaults = {
			containerID: 'toTop', // fading element id
			containerHoverID: 'toTopHover', // fading element hover id
			scrollSpeed: 1200,
			easingType: 'linear' 
			};
		*/								
		$().UItoTop({ easingType: 'easeOutQuart' });
		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->
<!-- for bootstrap working -->
		<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->


</body>
</html>
<%
    }
%>

        