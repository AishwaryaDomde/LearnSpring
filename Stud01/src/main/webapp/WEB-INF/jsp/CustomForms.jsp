<html>

<head>
    <title>
        Custom Forms
    </title>
</head>

<body>
    <div class="container-fluid ">
        <h2>Custom forms</h2>
        <form>
            <div class="custom-control custom-checkbox">
                <input type="checkbox" class="custom-control-input" id="customCheck" name="example1">
                <label class="custom-control-label" for="customCheck">Check this custom checkbox</label>
            </div>
            <div class="custom-control custom-radio">
                <input type="radio" class="custom-control-input" id="customRadio" name="example1" value="customEx">
                <label class="custom-control-label" for="customRadio">Custom radio</label>
            </div>
            <div class="custom-control custom-radio custom-control-inline">
                <input type="radio" class="custom-control-input" id="customRadio" name="example" value="customEx">
                <label class="custom-control-label" for="customRadio">Custom radio 1</label>
            </div>
            <div class="custom-control custom-radio custom-control-inline">
                <input type="radio" class="custom-control-input" id="customRadio2" name="example" value="customEx">
                <label class="custom-control-label" for="customRadio2">Custom radio 2</label>
            </div>
            <select class="custom-select custom-select-sm mb-3">
                <option selected>Small Custom Select Menu</option>
                <option value="volvo">Volvo</option>
                <option value="fiat">Fiat</option>
                <option value="audi">Audi</option>
            </select>
            <select name="cars" class="custom-select custom-select mb-3">
                <option selected>Default Custom Select Menu</option>
                <option value="volvo">Volvo</option>
                <option value="fiat">Fiat</option>
                <option value="audi">Audi</option>
            </select>
            <select name="cars" class="custom-select custom-select-lg mb-3">
                <option selected>Large Custom Select Menu</option>
                <option value="volvo">Volvo</option>
                <option value="fiat">Fiat</option>
                <option value="audi">Audi</option>
            </select>
            <label for="customRange">Custom range</label>
            <input type="range" class="custom-range" id="customRange" name="points1">
            <br><br>
            <div class="custom-file">
                <input type="file" class="custom-file-input" id="customFile">
                <label class="custom-file-label" for="customFile">Choose file</label>
            </div>
        </form>
    </div>
</body>

</html>