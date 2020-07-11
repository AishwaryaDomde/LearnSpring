<html>

<head>
    <title>Collapse</title>
</head>

<body>
    <div class="container-fluid ">
        <h2>Simple Collapsible</h2>
        <p>Click on the button to toggle between showing and hiding content.</p>
        <button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#Colapse_Demo">Simple collapsible</button>
        <div id="Colapse_Demo" class="collapse">
            Lorem ipsum dolor sit amet, consectetur adipisicing elit,
            sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
            quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
        </div>
        <br>
        <div id="accordion">

            <div class="card">
                <div class="card-header">
                    <a class="card-link" data-toggle="collapse" href="#collapseOne">
                        Collapsible Group Item #1
                    </a>
                </div>
                <div id="collapseOne" class="collapse show" data-parent="#accordion">
                    <div class="card-body">
                        Lorem ipsum..
                    </div>
                </div>
            </div>

            <div class="card">
                <div class="card-header">
                    <a class="collapsed card-link" data-toggle="collapse" href="#collapseTwo">
                        Collapsible Group Item #2
                    </a>
                </div>
                <div id="collapseTwo" class="collapse" data-parent="#accordion">
                    <div class="card-body">
                        Lorem ipsum..
                    </div>
                </div>
            </div>

            <div class="card">
                <div class="card-header">
                    <a class="collapsed card-link" data-toggle="collapse" href="#collapseThree">
                        Collapsible Group Item #3
                    </a>
                </div>
                <div id="collapseThree" class="collapse" data-parent="#accordion">
                    <div class="card-body">
                        Lorem ipsum..
                    </div>
                </div>
            </div>

        </div>
    </div>
</body>

</html>