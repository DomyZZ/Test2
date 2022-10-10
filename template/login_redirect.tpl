<html>
<head>
    <title>
        {$settings.general.site_name}
    </title>
    <meta http-equiv="refresh" content="1;url={$base_url}/dashboard"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>

        * {
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }

        #content {
            max-width: 100%;
            margin: 150px auto;
            text-align: center;
            height: 400px !important;
        }

        h3
        {
            font-weight: 300;
        }

        img {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
<div id="content">
    <img src="images/loader.gif"/>
    <h3>Welcome {$user.username}</h3>
    Please wait while you are redirected to your <a href="{$base_url}/dashboard">dashboard</a></a>
</div>
</body>
</html>
