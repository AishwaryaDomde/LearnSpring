<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
    <style>
  /* Make the image fully responsive */
  .carousel-inner img {
      width: 100%;
      height: 100%;
  }
  </style>
</head>
<body>

<div id="demo" class="carousel slide  " data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  
  <!-- The slideshow  width="1100"-->
  <div class="container-fluid">
        <div class="carousel-inner">
                <div class="carousel-item active">
                  <img src="assets/img/img2.jpg" alt="Los Angeles"  height="500">
                </div>
                <div class="carousel-item">
                  <img src="assets/img/img3.jpg" alt="Chicago" height="500">
                </div>
                <div class="carousel-item">
                  <img src="assets/img/img1.jpg" alt="New York" height="500">
                </div>
              </div>
  </div>

  
  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>

</body>
</html>
