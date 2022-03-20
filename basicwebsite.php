<!DOCTYPE html>
<html>
    <head>
		<title>LOGIN</title>
        <link rel="icon" href ="E.png" type = "image/x-icon">
		<link rel="stylesheet" type="text/css" href="styling.css"> 
	</head>	
    <body>	
		<div class="container">
			<img src="epignosis.png">
            <form action="process.php" method="POST">
                <div class="form-input">
                    <input type="text" id="email" name="email" placeholder="EMAIL"/>	
                </div>
                <div class="form-input">
                    <input type="password" id="pass" name="pass" placeholder="PASSWORD"/>
                </div>
                <input type="submit" type="submit" value="LOGIN" class="btn-login"/>
            </form>
        </div>
    </body>
</html>

   
