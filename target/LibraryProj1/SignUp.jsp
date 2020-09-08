<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		<!DOCTYPE html>
		<html lang="en">
		<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="https://fonts.googleapis.com/css?family=Rowdies:300,regular,700" rel="stylesheet" />
		<title>Sign-Up</title>
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="dist/reveal.css">
		<link rel="stylesheet" href="css/demo.css">
		<link rel="stylesheet" href="plugin/highlight/monokai.css" id="highlight-theme">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
		<style>
		    html, #body2{
			height: 100%;
			overflow: hidden;
		    }
			#body2 {
		        background-color: #222;
		        color: #fff;
		        background-image: url('img/bookbg2.jpg');
		        background-size: 110%;
		        background-repeat:round;
				font-family: 'Rowdies', sans-serif;
		    }
		    .meny ul li{
		        width: 230px;
		    }
		    .elements{
			padding: 20px 20px;
			width: 100%;
			height: 100%;
		    overflow-y: auto;
			-webkit-overflow-scrolling: touch;
			-webkit-transform-style: preserve-3d;
			-webkit-box-sizing: border-box;
		    -moz-box-sizing: border-box;
		     box-sizing: border-box;
		    }
		    .form-control{
				height: 41px;
				background: rgba(255, 255, 255, 0.5);
				box-shadow: none !important;
		        border: none;
		        color:teal;
			}
			.form-control:focus{
				background: rgba(255, 255, 255, 0.7);
		    }
		    .form-control::placeholder{
		        color: teal;
		    }
		    .form-control, .btn{        
		        border-radius: 3px;
		    }
			.signup-form{
				width: 390px;
				margin: 30px auto;
			}
			.signup-form form{
				color: thistle;
				border-radius: 3px;
		    	margin-bottom: 15px;
		        background:#9993;
		        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
		        padding: 30px;
		    }
			.signup-form h2 {
				color:yellow;
				font-weight: bold;
		        margin-top: 0;
		    }
		    .signup-form hr {
		        margin: 0 -30px 20px;
		    }    
			.signup-form .form-group{
				margin-bottom: 20px;
			}
			.signup-form input[type="checkbox"]{
				margin-top: 3px;
			}
			.signup-form .row div:first-child{
				padding-right: 10px;
			}
			.signup-form .row div:last-child{
				padding-left: 10px;
			}
		    .signup-form .btn{        
		        font-size: 16px;
		        font-weight: bold;
				background: #3598dc;
				border: none;
				min-width: 140px;
		    }
			.signup-form .btn:hover, .signup-form .btn:focus{
				background: #2389cd !important;
		        outline: none;
			}
		    .signup-form a{
				color: #fff;
				text-decoration: underline;
			}
			.signup-form a:hover{
				text-decoration: none;
			}
			.signup-form form a{
				color: #3598dc;
				text-decoration: none;
			}	
			.signup-form form a:hover{
				text-decoration: underline;
			}
		    .signup-form .hint-text {
				padding-bottom: 15px;
				text-align: center;
		    }
		    .signup-form .hint-text a{
		        color: #2389cd;
		    }
			/* input[type=file]:focus,.custom-file-input:focus,.custom-file-label {
		        outline:none!important;
				background-color:  rgba(255, 255, 255, 0.7);
		        border-color: transparent;
		        box-shadow: none!important;
		    }
		    .custom-file,
		    .custom-file-label,
		    .custom-file-input {
		        cursor: pointer;
		    }
			.custom-file-label
			{
				width: 50%;
			} */
		
		</style>
</head>
<body id="body2">
    <div class="meny">
        <a href="home.html" style="text-decoration: none;"><h2>Hello Dear &#128522 Welcome To <span style="color:seagreen "> DIGITAL LIBRARY</span></h2></a>
        <ul>
            <li><a href="admin.html">Login</a></li>
            <li><a href="staff.html">Student SignUp</a></li>
            <li><a href="http://lab.hakim.se/forkit-js/">Mission & Vission</a></li>
            <li><a href="http://lab.hakim.se/scroll-effects/">Discover Libraries</a></li>
            <li><a href="http://lab.hakim.se/zoom-js">Contact Us</a></li>
            <li><a href="http://lab.hakim.se/reveal-js">Wikipedia</a></li>
        </ul>
    </div>

    <div class="meny-arrow"></div>
    <div class="elements">
    <div class="signup-form">
    <form action="signupstd" method="post">
		
		<h2>Student Sign Up</h2>
		<p>Please fill in this form to create an account!</p>
		<hr>
        <div class="form-group">
			<div class="row">
				<div class="col-xs-6"><input type="text" class="form-control" name="first_name" placeholder="First Name" required="required"></div>
				<div class="col-xs-6"><input type="text" class="form-control" name="last_name" placeholder="Last Name" required="required"></div>
			</div>        	
        </div>
        <div class="form-group">
        	<input type="text" class="form-control" name="email" placeholder="Email or Mobile number" required="required">
        </div>
        <div class="form-group">
            <label for="birthday">Birthday:</label>
            <input type="date" class="form-control" id="birthday" name="birthday" required="required">
        </div>
		<div class="form-group">
            <input type="password" class="form-control" name="password" placeholder="Password" required="required">
        </div>
		<div class="form-group">
            <input type="password" class="form-control" name="confirm_password" placeholder="Confirm Password" required="required">
        </div> 
        <div class="form-group">
            <div class="form-row align-items-center">
                <div class="col-auto my-1">
                  <!-- <label class="mr-sm-2 sr-only" for="inlineFormCustomSelect">Preference</label> -->
                  <select class="form-control" name="gender" id="inlineFormCustomSelect" required="required">
                    <option value="">Gender...</option>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    <option value="Other">Other</option>
                  </select>
                </div>
                 <div class="col-xs-7 ">
                    <!-- <label class="mr-sm-2 sr-only" for="inlineFormCustomSelect">Preference</label> -->
                    <select class="form-control" name="library" id="inlineFormCustomSelect" required="required">
                      <option value="">Choose Library...</option>
                      <option value="Shree Aurobindo Digital Library">Shree Aurobindo Digital Library</option>
                      <option value="Krishna & Yasoda Digital Library">Krishna & Yasoda Digital Library</option>
                      <option value="Rabindra  Digital Library">Rabindra  Digital Library</option>
                      <option value="Krupasindhu Digital Library">Krupasindhu Digital Library</option>
                      <option value="Gopinath Digital Library">Gopinath Digital Library</option>
                      <option value="Ambendkar Digital Library">Ambendkar Digital Library</option>
                    </select>
                  </div>
        </div>    
        </div>   
        <div class="form-group">
			<label class="checkbox-inline"><input type="checkbox" required="required"> I accept the <a href="#">Terms of Use</a> &amp; <a href="#">Privacy Policy</a></label>
		</div>
		<div class="form-group">
            <button type="submit" class="btn btn-primary btn-lg">Sign Up</button>
        </div>
    </form>
	<div class="hint-text">Already have an account? <a href="signinform.html">Login here</a></div>
	</div>
	</div>
	<script src="dist/reveal.js"></script>
	<script src="plugin/zoom/zoom.js"></script>
	<script src="plugin/notes/notes.js"></script>
	<script src="plugin/search/search.js"></script>
	<script src="plugin/markdown/markdown.js"></script>
	<script src="plugin/highlight/highlight.js"></script>
	<script src="js/meny.js"></script>
<script>
    // Create an instance of Meny
    var meny = Meny.create({
        // The element that will be animated in from off screen
        menuElement: document.querySelector( '.meny' ),

        // The contents that gets pushed aside while Meny is active
        contentsElement: document.querySelector( '.elements' ),

        // [optional] The alignment of the menu (top/right/bottom/left)
        position: Meny.getQuery().p || 'left',

        // [optional] The height of the menu (when using top/bottom position)
        height: 200,

        // [optional] The width of the menu (when using left/right position)
        width: 260,

        // [optional] Distance from mouse (in pixels) when menu should open
        threshold: 40,

        // [optional] Use mouse movement to automatically open/close
        mouse: true,

        // [optional] Use touch swipe events to open/close
        touch: true
    });

    // API Methods:
    // meny.open();
    // meny.close();
    // meny.isOpen();

    // Events:
    // meny.addEventListener( 'open', function(){ console.log( 'open' ); } );
    // meny.addEventListener( 'close', function(){ console.log( 'close' ); } );

    // Embed an iframe if a URL is passed in
    if( Meny.getQuery().u && Meny.getQuery().u.match( /^http/gi ) ) {
        var contents = document.querySelector( '.elements' );
        contents.style.padding = '0px';
        contents.innerHTML = '<div class="cover"></div><iframe src="'+ Meny.getQuery().u +'" style="width: 100%; height: 100%; border: 0; position: absolute;"></iframe>';
    }
</script>
<script>

    // Also available as an ES module, see:
    // https://revealjs.com/initialization/
    Reveal.initialize({
        controls: true,
        progress: true,
        center: true,
        hash: true,
        

        // Learn about plugins: https://revealjs.com/plugins/
        plugins: [ RevealZoom, RevealNotes, RevealSearch, RevealMarkdown, RevealHighlight ]
    });

</script>
</body>
</html>