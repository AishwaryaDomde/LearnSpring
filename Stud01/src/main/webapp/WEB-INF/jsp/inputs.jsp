<html>

<head>
    <title>
        Inputs
    </title>
</head>

<body>
    <div class="container-fluid ">
        <h2>Form control:</h2>
        <h5>Form control: input</h5>
        <p>The form below contains two input elements; one of type text and one of type password:</p>
        <form action="/action_page.php">
            <div class="form-group">
                <label for="usr">Name:</label>
                <input type="text" class="form-control" id="usr" name="username">
            </div>
            <div class="form-group">
                <label for="pwd">Password:</label>
                <input type="password" class="form-control" id="pwd" name="password">
            </div>
            <div class="form-group">
                <label for="comment">Comment:</label>
                <textarea class="form-control" rows="5" id="comment"></textarea>
            </div>
            <div class="form-check">
                <label class="form-check-label">
                    <input type="checkbox" class="form-check-input" value="">Option 1
                </label>
            </div>
            <div class="form-check">
                <label class="form-check-label">
                    <input type="checkbox" class="form-check-input" value="">Option 2
                </label>
            </div>
            <div class="form-check disabled">
                <label class="form-check-label">
                    <input type="checkbox" class="form-check-input" value="" disabled>Option 3
                </label>
            </div>
            <div class="form-check-inline">
                <label class="form-check-label">
                    <input type="checkbox" class="form-check-input" value="">Option 1
                </label>
            </div>
            <div class="form-check-inline">
                <label class="form-check-label">
                    <input type="checkbox" class="form-check-input" value="">Option 2
                </label>
            </div>
            <div class="form-check-inline disabled">
                <label class="form-check-label">
                    <input type="checkbox" class="form-check-input" value="" disabled>Option 3
                </label>
            </div>
            <div class="form-check">
                <label class="form-check-label">
                    <input type="radio" class="form-check-input" name="optradio">Option 1
                </label>
            </div>
            <div class="form-check">
                <label class="form-check-label">
                    <input type="radio" class="form-check-input" name="optradio">Option 2
                </label>
            </div>
            <div class="form-check disabled">
                <label class="form-check-label">
                    <input type="radio" class="form-check-input" name="optradio" disabled>Option 3
                </label>
            </div>
            <div class="form-check-inline">
                <label class="form-check-label">
                    <input type="radio" class="form-check-input" name="optradio">Option 1
                </label>
            </div>
            <div class="form-check-inline">
                <label class="form-check-label">
                    <input type="radio" class="form-check-input" name="optradio">Option 2
                </label>
            </div>
            <div class="form-check-inline disabled">
                <label class="form-check-label">
                    <input type="radio" class="form-check-input" name="optradio" disabled>Option 3
                </label>
            </div>
            <div class="form-group">
                <label for="sel1">Select list (select one):</label>
                <select class="form-control" id="sel1" name="sellist1">
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                </select>
                <br>
                <label for="sel2">Mutiple select list (hold shift to select more than one):</label>
                <select multiple class="form-control" id="sel2" name="sellist2">
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
            </div>
            <input type="text" class="form-control form-control-sm">
            <input type="text" class="form-control form-control">
            <input type="text" class="form-control form-control-lg">
            <div class="form-group">
                <input type="range" class="form-control-range" name="range">
            </div>
            <div class="form-group">
                <input type="file" class="form-control-file border" name="file">
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>

        </form>
    </div>
</body>

</html>