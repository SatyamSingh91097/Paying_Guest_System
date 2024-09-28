<!DOCTYPE html>
<html lang="en">
<head>
  <title>RentHouse</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


<nav class="navbar navbar-expand-sm navbar-light justify-content-between" style="background-color: #e3f2fd;">
  <div class="container-fluid">
  <a class="navbar-header" href="index.php">
    <img src="images/logo.png" alt="logo" style="height:50px;">
  </a>
  
  <!-- Links -->
  <ul class="nav navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="index.php"><b>Home</b></a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="about_us.html"><b>About Us</b></a>
    </li>
    <li class="nav-item">
      <a class="nav-link"  href="contact_us.html"><b>Contact Us</b></a>
    </li>
  </ul>
  <ul class="nav navbar-nav navbar-right">
      <?php 
      
if(isset($_SESSION["email"]) && !empty($_SESSION['email'])){
?>
<li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-user"></span><b>My Profile</b>
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="profile.php"><b>Profile</b></a></li>
          <li><a href="booked-property.php"><b>Booked Property</b></a></li>
          <li><a href="logout.php"><b>Logout</b></a></li>
        </ul>
      </li>


<?php
  
}

else {?>
      <li><a href="how-to-register.php"><span class="glyphicon glyphicon-user"></span><b> Register</b></a></li>
      <li><a href="how-to-login.php"><span class="glyphicon glyphicon-log-in"></span><b> Login</b></a></li>
    <?php } ?>
    </ul>
  </div>
</nav>
<script>
  (function (w, d, s, o, f, js, fjs) {
    w["botsonic_widget"] = o;
    w[o] =
      w[o] ||
      function () {
        (w[o].q = w[o].q || []).push(arguments);
      };
    (js = d.createElement(s)), (fjs = d.getElementsByTagName(s)[0]);
    js.id = o;
    js.src = f;
    js.async = 1;
    fjs.parentNode.insertBefore(js, fjs);
  })(window, document, "script", "Botsonic", "https://widget.writesonic.com/CDN/botsonic.min.js");
  Botsonic("init", {
    serviceBaseUrl: "https://api-azure.botsonic.ai",
    token: "339b5664-b829-4eed-8830-a37fc6b35529",
  });
</script>
</body>
</html>
