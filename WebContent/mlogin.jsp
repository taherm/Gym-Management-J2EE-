<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>Manager Login Form</title>
    
    
    <link rel="stylesheet" href="css1/reset.css">

    <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
<link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

        <link rel="stylesheet" href="css1/style.css">

    
    
    
  </head>

  <body>

    
<!-- Mixins-->
<!-- Pen Title-->
<div class="pen-title">
  <h1 style="color:#ed2553"><b>Manager Login Form</b></h1>
</div>

<div class="container">
  <div class="card"></div>
  <div class="card">
    <h1 class="title">Login</h1>
    <form  method="post" action="sv">
      <div class="input-container">
        <input type="text" name="uname" required="required"/>
        <label for="Username">Username</label>
        <div class="bar"></div>
      </div>
      <div class="input-container">
        <input type="password"  name="pass" required="required"/>
        <label for="Password">Password</label>
        <div class="bar"></div>
      </div>
      <div class="button-container">
        <button><span>login</span></button>
      </div>
      <div class="footer"><a href="#">Forgot your password?</a></div>
    </form>
  </div>
  
  
 
</div>
<!-- Portfolio--><a id="portfolio" href="http://andytran.me/" title="View my portfolio!"><i class="fa fa-link"></i></a>
<!-- CodePen--><a id="codepen" href="http://codepen.io/andytran/" title="Follow me!"><i class="fa fa-codepen"></i></a>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

        <script src="js/index.js"></script>

    
    
    
  </body>
</html>
