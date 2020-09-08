<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=800, user-scalable=no">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/demo2.css">
    <link rel="stylesheet" href="dist/reveal.css">
    <link rel="stylesheet" href="css/demo.css">
    <link href="https://fonts.googleapis.com/css?family=Federant:regular" rel="stylesheet" />
    <link rel="stylesheet" href="plugin/highlight/monokai.css" id="highlight-theme">
    <title>Sign-In</title>
</head>
<body id="body2">

    <div class="meny">
        <a href="home.html" style="text-decoration: none;"><h2>Hello Dear &#128522 Welcome To <span style="color:seagreen "> DIGITAL LIBRARY</span></h2></a>
        <ul>
            <li><a href="SignIn.jsp">Login</a></li>
            <li><a href="SignUp.jsp">Student SignUp</a></li>
            <li><a href="">Mission & Vission</a></li>
            <li><a href="BookDiscovery.jsp">Discover Libraries</a></li>
            <li><a href="">Contact Us</a></li>
            <li><a href="">Wikipedia</a></li>
        </ul>
    </div>
    <div class="meny-arrow"></div>

    <h2 id="h2">The Digital Library</h2>
    <div class="container" id="block1">
        <br>
        <form action="signin" method="POST" >
            <div class="form-group">
                <label class="my-1 mr-2" for="inlineFormCustomSelectPref">Preference</label>
                <select class="custom-select my-1 mr-sm-2" name="prefer" id="inlineFormCustomSelectPref" required="required">
                    <option value="">Choose...</option>
                    <option value="Student">Student</option>
                    <option value="Administrator">Administrator</option>
                    <option value="Staff">Staff</option>
                </select>
                <label for="exampleInputEmail1">Username</label>
                <input type="text" name="uname" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Username/Email/Phone" required="required">
                <small id="emailHelp" class="form-text text-muted"><span>We'll never share your email with anyone else.</span>></small>
              </div>
              <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input type="password" name="pass" class="form-control" id="exampleInputPassword1" placeholder="Password" required="required">
              </div>
              <div class="form-check">
                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                <label class="form-check-label" for="exampleCheck1">Remember Me</label>
              </div>
              <button type="submit" class="btn btn-primary">Sign in</button>
        </form>
        <br>
        <h4>Yet you are not Signed-Up?<br> <a href="SignUp.jsp">Sign Up Now</a></h4>
        <p><mark>*ONLY FOR STUDENTS</mark></p>
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
				contentsElement: document.querySelector( '.container' ),

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
				var contents = document.querySelector( '.container' );
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
                autoSlide: 5000,
                loop: true,

				// Learn about plugins: https://revealjs.com/plugins/
				plugins: [ RevealZoom, RevealNotes, RevealSearch, RevealMarkdown, RevealHighlight ]
			});

		</script>
</body>
</html>