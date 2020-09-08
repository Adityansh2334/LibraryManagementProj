<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="dist/reset.css">
    <link rel="stylesheet" href="dist/reveal.css">
    <link rel="stylesheet" href="dist/theme/black.css" id="theme">
    <link rel="stylesheet" href="css/demo2.css">
    <title>Books Discover</title>
</head>
<body>
        <div class="reveal">
            <div class="slides">
                    <section data-background-color="red" data-background-size="50px" data-background-transition="convex">
                        <h3 align="center">Library Avilablity</h3>
                        <form action="books" method="get">
                        <input type="hidden" value="login" name="hiddendata">
                            <table>
                                <thead>
                                    <tr>
                                        <th>Library Name</th>
                                        <th>Address</th>
                                        <th>Discover</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Shree Aurobindo Digital Library</td>
                                        <td>Balasore, Odisha</td>
                                        <td><button type="submit" name="sub" value="Shree Aurobindo Digital Library" style="width: 100px;" class="btn btn-primary">Go</button></td>
                                    </tr>
                                    <tr>
                                        <td>Krishna & Yasoda Digital Library</td>
                                        <td>Bhuabaneswar, Odisha</td>
                                        <td><button type="submit" name="sub" value="Krishna & Yasoda Digital Library" style="width: 100px;" class="btn btn-primary">Go</button></td>
                                    </tr>
                                    <tr>
                                        <td>Rabindra  Digital Library</td>
                                        <td>Bengaluru, India</td>
                                        <td><button type="submit" name="sub" value="Rabindra  Digital Library" style="width: 100px;" class="btn btn-primary">Go</button></td>
                                    </tr>
                                </tbody>
                            </table>
                        </form>
                    </section>
                    <section data-background-color="rgba(111,23,212,0.1)" data-background-size="50px">
                        <form action="books" method="get">
                          <input type="hidden" value="login" name="hiddendata">
                            <table>
                                <thead>
                                    <tr>
                                        <th>Library Name</th>
                                        <th>Address</th>
                                        <th>Discover</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Krupasindhu Digital Library</td>
                                        <td>Kolkatta, Wb</td>
                                        <td><button type="submit" name="sub" value="Krupasindhu Digital Library" style="width: 100px;" class="btn btn-primary">Go</button></td>
                                    </tr>
                                    <tr>
                                        <td>Gopinath Digital Library</td>
                                        <td>Koraput, Odisha</td>
                                        <td><button type="submit" name="sub" value="Gopinath Digital Library" style="width: 100px;" class="btn btn-primary">Go</button></td>
                                    </tr>
                                    <tr>
                                        <td>Ambendkar Digital Library</td>
                                        <td>Delhi, India</td>
                                        <td><button type="submit"  name="sub" value="Ambendkar Digital Library" style="width: 100px;" class="btn btn-primary">Go</button></td>
                                    </tr>
                                </tbody>
                            </table>
                        </form>
                    </section>
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
				contentsElement: document.querySelector( '.contents' ),

				// [optional] The alignment of the menu (top/right/bottom/left)
				position: Meny.getQuery().p || 'top',

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
				var contents = document.querySelector( '.contents' );
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
                autoSlide: 10000,
                loop: true,

				// Learn about plugins: https://revealjs.com/plugins/
				plugins: [ RevealZoom, RevealNotes, RevealSearch, RevealMarkdown, RevealHighlight ]
			});
            Reveal.configure({ backgroundTransition: 'convex' });

		</script>
</body>
</html>