<%@page import="org.app.lib.dto.Students"%>
<%@page import="org.app.lib.dao.StudentsDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='en'>
<head>
    <meta charset='UTF-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link href='https://fonts.googleapis.com/css?family=Rowdies:300,regular,700' rel='stylesheet' />

    <title>Welcome</title>
    <style>
        body{
            color: aliceblue;
            font-family: 'Rowdies',sans-serif;
            background-image: url('img/confirm.jpg');
            text-align: center;
        }
        .img img{
            text-align: center;
            border-radius: 50%;
        }
        .signup-form{
		width: 390px;
		margin: 30px auto;
        color: black;
        text-shadow: 2px 2px 4px aquamarine;
		border-radius: 3px;
    	margin-bottom: 15px;
        background:#9993;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.6);
        padding: 30px;
	}
    #snowflakeContainer {
    position: absolute;
    left: 0px;
    top: 0px;
    display: none;
    }

    .snowflake {
        position: fixed;
        background-color: rgb(255, 223, 118);
        user-select: none;
        z-index: 1000;
        pointer-events: none;
        border-radius: 20%;
        width: 10px;
        height: 10px;
    }
    </style>
</head>
<body>
		<%
			String fnm=request.getParameter("first_name");
			String lnm=request.getParameter("last_name");
			StudentsDao dao=StudentsDao.getInstance();
			Students stud=dao.getStudentDataByName(fnm, lnm);
			String code=stud.getGeneratedcode();
		%>
    <p>Hey! Welcome To Digital Library</p>
    <p>Registraition Successful!</p>
    <div id="snowflakeContainer">
        <span class="snowflake"></span>
    </div>
    <h1>Your Details:</h1>
    <hr>
    <div class='signup-form'>
   <p> Name: <%= request.getParameter("first_name")+" "+request.getParameter("last_name") %></p>
   <p>Email/Phone:<%= request.getParameter("email") %> </p>
   <p>DOB: <%= request.getParameter("birthday") %> </p>
   <p>Gender:<%= request.getParameter("gender") %>  </p>
   <p>Generated Code: <%= code %> <mark style="font-size: x-small;">*NEED To Be Stored in a Safe Place</mark></p>
   </div>
   <div align="center">
   <a href="home.html"><button type="button" class="btn btn-success">Home</button></a> &nbsp; <a href="SignIn.jsp"><button type="button" class="btn btn-success">Login</button></a>
   </div>
   <script>
    // Array to store our Snowflake objects
    var snowflakes = [];
  
    // Global variables to store our browser's window size
    var browserWidth;
    var browserHeight;
  
    // Specify the number of snowflakes you want visible
    var numberOfSnowflakes = 50;
  
    // Flag to reset the position of the snowflakes
    var resetPosition = false;
  
    // Handle accessibility
    var enableAnimations = false;
    var reduceMotionQuery = matchMedia("(prefers-reduced-motion)");
  
    // Handle animation accessibility preferences 
    function setAccessibilityState() {
      if (reduceMotionQuery.matches) {
        enableAnimations = false;
      } else { 
        enableAnimations = true;
      }
    }
    setAccessibilityState();
  
    reduceMotionQuery.addListener(setAccessibilityState);
  
    //
    // It all starts here...
    //
    function setup() {
      if (enableAnimations) {
        window.addEventListener("DOMContentLoaded", generateSnowflakes, false);
        window.addEventListener("resize", setResetFlag, false);
      }
    }
    setup();
  
    //
    // Constructor for our Snowflake object
    //
    function Snowflake(element, speed, xPos, yPos) {
      // set initial snowflake properties
      this.element = element;
      this.speed = speed;
      this.xPos = xPos;
      this.yPos = yPos;
      this.scale = 1;
  
      // declare variables used for snowflake's motion
      this.counter = 0;
      this.sign = Math.random() < 0.5 ? 1 : -1;
  
      // setting an initial opacity and size for our snowflake
      this.element.style.opacity = (.1 + Math.random()) / 3;
    }
  
    //
    // The function responsible for actually moving our snowflake
    //
    Snowflake.prototype.update = function () {
      // using some trigonometry to determine our x and y position
      this.counter += this.speed / 5000;
      this.xPos += this.sign * this.speed * Math.cos(this.counter) / 40;
      this.yPos += Math.sin(this.counter) / 40 + this.speed / 30;
      this.scale = .5 + Math.abs(10 * Math.cos(this.counter) / 20);
  
      // setting our snowflake's position
      setTransform(Math.round(this.xPos), Math.round(this.yPos), this.scale, this.element);
  
      // if snowflake goes below the browser window, move it back to the top
      if (this.yPos > browserHeight) {
        this.yPos = -50;
      }
    }
  
    //
    // A performant way to set your snowflake's position and size
    //
    function setTransform(xPos, yPos, scale, el) {
      el.style.transform = `translate3d(${xPos}px, ${yPos}px, 0) scale(${scale}, ${scale})`;
    }
  
    //
    // The function responsible for creating the snowflake
    //
    function generateSnowflakes() {
  
      // get our snowflake element from the DOM and store it
      var originalSnowflake = document.querySelector(".snowflake");
  
      // access our snowflake element's parent container
      var snowflakeContainer = originalSnowflake.parentNode;
      snowflakeContainer.style.display = "block";
  
      // get our browser's size
      browserWidth = document.documentElement.clientWidth;
      browserHeight = document.documentElement.clientHeight;
  
      // create each individual snowflake
      for (var i = 0; i < numberOfSnowflakes; i++) {
  
        // clone our original snowflake and add it to snowflakeContainer
        var snowflakeClone = originalSnowflake.cloneNode(true);
        snowflakeContainer.appendChild(snowflakeClone);
  
        // set our snowflake's initial position and related properties
        var initialXPos = getPosition(50, browserWidth);
        var initialYPos = getPosition(50, browserHeight);
        var speed = 5 + Math.random() * 40;
  
        // create our Snowflake object
        var snowflakeObject = new Snowflake(snowflakeClone,
          speed,
          initialXPos,
          initialYPos);
        snowflakes.push(snowflakeObject);
      }
  
      // remove the original snowflake because we no longer need it visible
      snowflakeContainer.removeChild(originalSnowflake);
  
      moveSnowflakes();
    }
  
    //
    // Responsible for moving each snowflake by calling its update function
    //
    function moveSnowflakes() {
  
      if (enableAnimations) {
        for (var i = 0; i < snowflakes.length; i++) {
          var snowflake = snowflakes[i];
          snowflake.update();
        }      
      }
  
      // Reset the position of all the snowflakes to a new value
      if (resetPosition) {
        browserWidth = document.documentElement.clientWidth;
        browserHeight = document.documentElement.clientHeight;
  
        for (var i = 0; i < snowflakes.length; i++) {
          var snowflake = snowflakes[i];
  
          snowflake.xPos = getPosition(50, browserWidth);
          snowflake.yPos = getPosition(50, browserHeight);
        }
  
        resetPosition = false;
      }
  
      requestAnimationFrame(moveSnowflakes);
    }
  
    //
    // This function returns a number between (maximum - offset) and (maximum + offset)
    //
    function getPosition(offset, size) {
      return Math.round(-1 * offset + Math.random() * (size + 2 * offset));
    }
  
    //
    // Trigger a reset of all the snowflakes' positions
    //
    function setResetFlag(e) {
      resetPosition = true;
    }
  </script>
</body>
</html>