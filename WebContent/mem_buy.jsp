<%@ include file="viewstock.jsp" %>
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
<%
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
						<li><a class="active" data-hover="HOME" href="mem_sucess.jsp">HOME </a></li>
						<li><a class="active" href='mem_opt.jsp'>Opt For Personal Trainer</a></li>
						<li><a class="active" href='mem_viewbatch.jsp'>My Batch Details</a></li>
						<li><a class="active" href='mem_buy.jsp'>Buy Supplements</a></li>
						<li><a  class="active" href='mem_buydetails.jsp'>My Purchase History</a></li>
						<li><a href="lo.jsp"> Log out </a></li>
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
<br>
 <H1 style="color:#ed2553"><center><b>STOCK DETAILS</b></center></H1>

        <% 
        Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:XE","system","aqamoula");
            Statement statement = conn.createStatement() ;
            ResultSet resultset = statement.executeQuery("select * from stock") ; 
        %>

        <TABLE BORDER="2" frame="box"align="center">
            <TR>
                 <TH width="200"height="50"><h3 style="color:#ed2553"><b>Name</b></h3></TH>
                 <TH width="200"height="50"><h3 style="color:#ed2553"><b>Stock</b></h3></TH>
                <TH width="200"height="50"><h3 style="color:#ed2553"><b>Stock_Date</b></h3></TH>
                   </TR>
            <% while(resultset.next()){ %>
            <TR>
                <TD width="200"height="50"><h4 style="color:#ed2553"> <%= resultset.getString(1) %></h4></TD>
                <TD width="200"height="50"><h4 style="color:#ed2553"> <%= resultset.getString(2) %></h4></TD>
                <TD width="200"height="50"><h4 style="color:#ed2553"> <%= resultset.getString(3) %></h4></TD>
                
                </TR>
                
            <% 
            }
                %>
                </TABLE>  
<br>
        <form method="post" action="buy.jsp">
            <center>
            <table  frame="box"  cellpadding="5"style="border-color:#ed2553">
                <thead>
                    <tr>
                        <th colspan="2"width="400"height="100"><H1 style="color:#ed2553"><center><b>PURCHASE SUPPLEMENTS HERE</b></center></H1></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td width="400"height="100"><center><h3 style="color:#ed2553"><b>Enter Supplement Name</b></h3></center></td>
                        <td width="400"height="100"><center><h3 style="color:#ed2553"><b><input type="text" name="uname"id="name" value="" onblur="javascript:valname(this.value)"/></b></h3></center></td>
                    </tr>
                    <tr>
                        <td width="400"height="100"><center><h3 style="color:#ed2553"><b>Enter Quantity</b></h3></center></td>
                        <td width="400"height="100"><center><h3 style="color:#ed2553"><b><input type="password" name="quan"id="st" value=""onblur="javascript:valst(this.value)" /></b></h3></center></td>
                    </tr>
                    <tr>
                        <td width="400"height="100"><center><input type="submit"class="tittle"style="width:100px;height:30px;background-color:#ed2553;font-weight:bold;color:white" value="SUBMIT" /></center></td>
                        <td width="400"height="100"><center><input type="reset"class="tittle" style="width:100px;height:30px;background-color:#ed2553;font-weight:bold;color:white"value="RESET" /></center></td>
                    </tr>
                    
                </tbody>
            </table>
            </center>
        </form>
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

function valst(name)
{
	
   var pattern=/[^0-9]/;
if(pattern.test(name))
{
alert("Enter only numeric value");
document.getElementById("st").focus();
document.getElementById("st").value = "";
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