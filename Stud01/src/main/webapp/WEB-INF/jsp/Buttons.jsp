<!DOCTYPE html>
<html>

<head>
    <title>Body</title>

<body>
    <div class="container-fluid ">
        <h2>Button Styles</h2>
        <div class="form-group">
            <div class="row">
                <div class="col-sm-6">
                    <h5>Button Default</h5>
                    <button type="button" class="btn">Basic</button>
                    <button type="button" class="btn btn-primary">Primary</button>
                    <button type="button" class="btn btn-secondary">Secondary</button>
                    <button type="button" class="btn btn-success">Success</button>
                    <button type="button" class="btn btn-info">Info</button>
                    <button type="button" class="btn btn-warning">Warning</button>
                    <button type="button" class="btn btn-danger">Danger</button>
                    <button type="button" class="btn btn-dark">Dark</button>
                    <button type="button" class="btn btn-light">Light</button>
                    <button type="button" class="btn btn-link">Link</button>

                </div>
                <div class="col-sm-6">
                    <h5>Sizes</h5>
                    <button type="button" class="btn btn-primary btn-lg">Large button</button>
                    <button type="button" class="btn btn-secondary btn-lg">Large button</button>
                    <button type="button" class="btn btn-primary btn-sm">Small button</button>
                    <button type="button" class="btn btn-secondary btn-sm">Small button</button>
                </div>
            </div>

        </div>
        <div class="form-group">
            <div class="row">
                <div class="col-sm-6">
                    <h5>Button Active/Inactive</h5>
                    <a href="#" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Primary link</a>
                    <a href="#" class="btn btn-secondary btn-lg active" role="button" aria-pressed="true">Link</a>
                    <button type="button" class="btn btn-lg btn-primary" disabled>Primary button</button>
                    <button type="button" class="btn btn-secondary btn-lg" disabled>Button</button>
                </div>
                <div class="col-sm-6">
                    <h5>Button Elements2</h5>
                    <a class="btn btn-primary" href="#" role="button">Link</a>
                    <button class="btn btn-primary" type="submit">Button</button>
                    <input class="btn btn-primary" type="button" value="Input">
                    <input class="btn btn-primary" type="submit" value="Submit">
                    <input class="btn btn-primary" type="reset" value="Reset">
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="row">
                    <div class="col-sm-12">  <h5>Button Blocklevel</h5></div>
                <div class="col-sm-6">
                    <button type="button" class="btn btn-primary btn-lg btn-block">Block level button</button>
                </div> <div class="col-sm-6">
                    <button type="button" class="btn btn-secondary btn-lg btn-block">Block level button</button>

                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="row">
                <div class="col-sm-7">
                    <button type="button" class="btn btn-outline-primary">Primary</button>
                    <button type="button" class="btn btn-outline-secondary">Secondary</button>
                    <button type="button" class="btn btn-outline-success">Success</button>
                    <button type="button" class="btn btn-outline-danger">Danger</button>
                    <button type="button" class="btn btn-outline-warning">Warning</button>
                    <button type="button" class="btn btn-outline-info">Info</button>
                    <button type="button" class="btn btn-outline-light">Light</button>
                    <button type="button" class="btn btn-outline-dark">Dark</button>
                </div>
                <div class="col-sm-5">
                    <div class="btn-group btn-group-toggle" data-toggle="buttons">
                        <button type="button" class="btn btn-primary" data-toggle="button" aria-pressed="false"
                            autocomplete="off">
                            Single toggle
                        </button>&nbsp;
                        <label class="btn btn-secondary active">
                            <input type="radio" name="options" id="option1" autocomplete="off" checked> Active
                        </label>
                        <label class="btn btn-secondary">
                            <input type="radio" name="options" id="option2" autocomplete="off"> Radio
                        </label>
                        <label class="btn btn-secondary">
                            <input type="radio" name="options" id="option3" autocomplete="off"> Radio
                        </label>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>