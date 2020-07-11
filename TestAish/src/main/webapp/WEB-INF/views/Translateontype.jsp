 <html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="text/javascript" src="https://www.google.com/jsapi">
    </script>
    <script type="text/javascript">
        // Load the Google Transliterate API
        google.load("elements", "1", {
            packages: "transliteration"
        });

        function onLoad() {
            var options = {
                sourceLanguage: 'en',
                destinationLanguage: ['hi'],
                shortcutKey: 'ctrl+g',
                transliterationEnabled: true
            };
            var control =
                new google.elements.transliteration.TransliterationControl(options);

            // Enable transliteration in the textfields with the given ids.
            var ids = ["transl1", "transl2"];
            control.makeTransliteratable(ids);

            // Show the transliteration control which can be used to toggle between
            // English and Hindi and also choose other destination language.
            control.showControl('translControl');
        }
        google.setOnLoadCallback(onLoad);
    </script>
</head>

<body>
    <center>Type in Indian languages (Press Ctrl+g to toggle between English and Hindi)</center>
    <div id='translControl'></div>
    <br>Title : <input type='textbox' id="transl1" />
    <br>Body<br><textarea id="transl2" style="width:600px;height:200px"></textarea>
</body>

</html>