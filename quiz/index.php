<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

body {
    font-family: "Lato", sans-serif;
}

.sidenav {
    height: 100%;
    width: 160px;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: #111;
    overflow-x: hidden;
    padding-top: 20px;
}

/*.sidenav a {
    padding: 6px 8px 6px 16px;
    text-decoration: none;
    font-size: 20px;
    color: #818181;
    display: block;
}

.sidenav a:hover {
    color: #f1f1f1;
}*/

.main {
    margin-left: 250px; /* Same as the width of the sidenav */
    padding: 0px 10px;
}

@media screen and (max-height: 450px) {
    .sidenav {padding-top: 15px;}
    .sidenav a {font-size: 18px;}
}

* {box-sizing: border-box}
body {font-family: "Lato", sans-serif;}

/* Style the tab */
.tab {
    float: left;
    border: 1px solid #ccc;
}

/* Style the buttons inside the tab */
.tab button {
    display: block;
    background-color: #222;
    padding: 22px 16px;
    width: 100%;
    border: none;
    outline: none;
    text-align: left;
    cursor: pointer;
    font-size: 17px;
    color: white;
}

/* Change background color of buttons on hover */
.tab button:hover {
    background-color: #ddd;
}

/* Create an active/current "tab button" class */
.tab button.active {
    background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
    float: left;
    width: 90%;
    border-left: none;
    padding-bottom: 50px;
}

</style>
<title>My Quiz</title>
</head>
<body>

<div class="sidenav tab">
  <a><button class="tablinks" onclick="openMenu(event, 'home')" id="defaultOpen">HOME</button></a>
  <a><button class="tablinks" onclick="openMenu(event, 'm1')">Materi 1 (PG)</button></a>
  <a><button class="tablinks" onclick="openMenu(event, 'm2')">Materi 2 (Isian)</button></a>
</div>

<div class="main">
  <div id="home" class="tabcontent">
    <p>Selamat Datang di Quiz Bahasa C</p>
  </div>

  <div id="m1" class="tabcontent">
    <?php 
      include 'materi1.php';
    ?>
  </div>

  <div id="m2" class="tabcontent">
    <?php 
      include 'materi2.php';
    ?>
  </div>
</div> 

<script>
function myFunction() {
    var x = document.getElementById("myTopnav");
    if (x.className === "topnav") {
        x.className += " responsive";
    } else {
        x.className = "topnav";
    }
}

function openMenu(evt, cityMenu) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityMenu).style.display = "block";
    evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();

</script>

</body>
</html>
