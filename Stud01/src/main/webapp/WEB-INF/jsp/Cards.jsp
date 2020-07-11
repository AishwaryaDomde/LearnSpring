<!Doctype html>
<html>

<head>
    <title>Cards</title>
</head>

<body>
    <div class="container-fluid  ">
        <h2>Basic Card</h2>
        <div class="form-group">
            <div class="row">
                <div class="col">
                    <h5>Basic Card</h5>
                    <div class="card">
                        <div class="card-body">Basic card</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="form-group">
            <h5>Cards with Contextual Classes</h5><br>
            <div class="card">
                <div class="card-body">Basic card</div>
            </div>
            <br>
            <div class="card bg-primary text-white">
                <div class="card-body">Primary card</div>
            </div>
            <br>
            <div class="card bg-success text-white">
                <div class="card-body">Success card</div>
            </div>
            <br>
            <div class="card bg-info text-white">
                <div class="card-body">Info card</div>
            </div>
            <br>
            <div class="card bg-warning text-white">
                <div class="card-body">Warning card</div>
            </div>
            <br>
            <div class="card bg-danger text-white">
                <div class="card-body">Danger card</div>
            </div>
            <br>
            <div class="card bg-secondary text-white">
                <div class="card-body">Secondary card</div>
            </div>
            <br>
            <div class="card bg-dark text-white">
                <div class="card-body">Dark card</div>
            </div>
            <br>
            <div class="card bg-light text-dark">
                <div class="card-body">Light card</div>
            </div>
        </div>
      
         <!-- /******************************another type***************************/-->
        <h2>Cards Columns</h2>
        <p>The .card-columns class creates a masonry-like grid of cards. The layout will automatically adjust as you
            insert more cards.</p>
        <p><strong>Note:</strong> The cards are displayed vertically on small screens (less than 576px):</p>
        <div class="card-columns">
            <div class="card bg-primary">
                <div class="card-body text-center">
                    <p class="card-text">Some text inside the first card</p>
                </div>
            </div>
            <div class="card bg-warning">
                <div class="card-body text-center">
                    <p class="card-text">Some text inside the second card</p>
                </div>
            </div>
            <div class="card bg-success">
                <div class="card-body text-center">
                    <p class="card-text">Some text inside the third card</p>
                </div>
            </div>
            <div class="card bg-danger">
                <div class="card-body text-center">
                    <p class="card-text">Some text inside the fourth card</p>
                </div>
            </div>
            <div class="card bg-light">
                <div class="card-body text-center">
                    <p class="card-text">Some text inside the fifth card</p>
                </div>
            </div>
            <div class="card bg-info">
                <div class="card-body text-center">
                    <p class="card-text">Some text inside the sixth card</p>
                </div>
            </div>
        </div>
        <!-- /******************************another type***************************/ -->
        <div class="card-columns">
            <div class="card bg-primary">
                <div class="card-body text-center">
                    <p class="card-text">Some text inside the first card</p>
                </div>
            </div>
            <div class="card bg-warning">
                <div class="card-body text-center">
                    <p class="card-text">Some text inside the second card</p>
                </div>
            </div>
            <div class="card bg-success">
                <div class="card-body text-center">
                    <p class="card-text">Some text inside the third card</p>
                </div>
            </div>
            <div class="card bg-danger">
                <div class="card-body text-center">
                    <p class="card-text">Some text inside the fourth card</p>
                </div>
            </div>
            <div class="card bg-light">
                <div class="card-body text-center">
                    <p class="card-text">Some text inside the fifth card</p>
                </div>
            </div>
            <div class="card bg-info">
                <div class="card-body text-center">
                    <p class="card-text">Some text inside the sixth card</p>
                </div>
            </div>
        </div><br>
        <!-- /******************************another type***************************/-->
        <div class="card-deck">
            <div class="card bg-primary">
                <div class="card-body text-center">
                    <p class="card-text">Some text inside the first card</p>
                </div>
            </div>
            <div class="card bg-warning">
                <div class="card-body text-center">
                    <p class="card-text">Some text inside the second card</p>
                </div>
            </div>
            <div class="card bg-success">
                <div class="card-body text-center">
                    <p class="card-text">Some text inside the third card</p>
                </div>
            </div>
            <div class="card bg-danger">
                <div class="card-body text-center">
                    <p class="card-text">Some text inside the fourth card</p>
                </div>
            </div>
        </div><br>
        <!-- /******************************another type***************************/-->
        <div class="card-group">
            <div class="card bg-primary">
                <div class="card-body text-center">
                    <p class="card-text">Some text inside the first card</p>
                </div>
            </div>
            <div class="card bg-warning">
                <div class="card-body text-center">
                    <p class="card-text">Some text inside the second card</p>
                </div>
            </div>
            <div class="card bg-success">
                <div class="card-body text-center">
                    <p class="card-text">Some text inside the third card</p>
                </div>
            </div>
            <div class="card bg-danger">
                <div class="card-body text-center">
                    <p class="card-text">Some text inside the fourth card</p>
                </div>
            </div>
        </div>
           <!-- /******************************another type***************************/-->
           <p>Image at the top (card-img-top):</p>
           <div class="card" style="width:400px">
               <img class="card-img-top" src="img/download.png" alt="Card image" style="width:100%">
               <div class="card-body">
                   <h4 class="card-title">John Doe</h4>
                   <p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
                   <a href="#" class="btn btn-primary">See Profile</a>
               </div>
           </div>
           <br>
   
           <p>Image at the bottom (card-img-bottom):</p>
           <div class="card" style="width:400px">
               <div class="card-body">
                   <h4 class="card-title">Jane Doe</h4>
                   <p class="card-text">Some example text some example text. Jane Doe is an architect and engineer</p>
                   <a href="#" class="btn btn-primary">See Profile</a>
               </div>
               <img class="card-img-bottom" src="img/img_avatar6.png" alt="Card image" style="width:100%">
           </div>
           <br>
           <!-- /******************************another type***************************/-->
           <div class="card" style="width:500px">
               <img class="card-img-top" src="img/avatar4.png" alt="Card image">
               <div class="card-img-overlay">
                   <h4 class="card-title">John Doe</h4>
                   <p class="card-text">Some example text.</p>
                   <a href="#" class="btn btn-primary">See Profile</a>
               </div>
           </div><br>
    </div>
</body>

</html>
<div class="col">

</div>