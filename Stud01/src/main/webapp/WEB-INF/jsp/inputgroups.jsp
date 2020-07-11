<html>

<head>
    <title>
        Input Groups
    </title>
</head>

<body>
    <div class="container-fluid ">
        <form>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text">@</span>
                </div>
                <input type="text" class="form-control" placeholder="Username">
            </div>

            <div class="input-group mb-3">
                <input type="text" class="form-control" placeholder="Your Email">
                <div class="input-group-append">
                    <span class="input-group-text">@example.com</span>
                </div>
            </div>
            <div class="input-group mb-3 input-group-sm">
                <div class="input-group-prepend">
                    <span class="input-group-text">Small</span>
                </div>
                <input type="text" class="form-control">
            </div>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text">Default</span>
                </div>
                <input type="text" class="form-control">
            </div>
        <div class="input-group mb-3 input-group-lg">
                <div class="input-group-prepend">
                    <span class="input-group-text">Large</span>
                </div>
                <input type="text" class="form-control">
            </div>
            <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <div class="input-group-text">
                        <input type="checkbox"> 
                      </div>
                    </div>
                    <input type="text" class="form-control" placeholder="Some text">
                  </div>
                  
                  <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <div class="input-group-text">
                        <input type="radio"> 
                      </div>
                    </div>
                    <input type="text" class="form-control" placeholder="Some text">
                  </div>
                  <div class="input-group mb-3">
                        <div class="input-group-prepend">
                          <button class="btn btn-outline-secondary" type="button">Basic Button</button> 
                        </div>
                        <input type="text" class="form-control" placeholder="Some text">
                      </div>
                      
                      <div class="input-group mb-3">
                        <input type="text" class="form-control" placeholder="Search">
                        <div class="input-group-append">
                          <button class="btn btn-success" type="submit">Go</button> 
                        </div>
                      </div>
                      
                      <div class="input-group mb-3">
                        <input type="text" class="form-control" placeholder="Something clever..">
                        <div class="input-group-append">
                          <button class="btn btn-primary" type="button">OK</button> 
                          <button class="btn btn-danger" type="button">Cancel</button> 
                        </div>
                      </div>
                      <div class="input-group mt-3 mb-3">
                            <div class="input-group-prepend">
                              <button type="button" class="btn btn-outline-secondary dropdown-toggle" data-toggle="dropdown">
                                Dropdown button
                              </button>
                              <div class="dropdown-menu">
                                <a class="dropdown-item" href="#">Link 1</a>
                                <a class="dropdown-item" href="#">Link 2</a>
                                <a class="dropdown-item" href="#">Link 3</a>
                              </div>
                            </div>
                            <input type="text" class="form-control" placeholder="Username">
                          </div>
                          <label for="demo">Write your email here:</label>
<div class="input-group mb-3">
  <input type="text" class="form-control" placeholder="Email" id="demo" name="email">
  <div class="input-group-append">
    <span class="input-group-text">@example.com</span>
  </div>
</div>
        </form>
    </div>
</body>

</html>