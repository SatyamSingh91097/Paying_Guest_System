<?php 
session_start();

include("navbar.php");

// Example array of property locations
$propertyLocations = array("Kirtipur", "Pokhara", "maharatra", "Location D", "Location E");

?>
<style>
body, html {
  height: 100%;
  margin: 0;
}

.bg {
  /* The image used */
  background-image: url("images/carousel.png");
  /* Full height */
  height: 60%;
  /* Center and scale the image nicely */
  background-position: bottom;
  background-repeat: no-repeat;
  background-size: cover;
}

.fa {
  padding: 20px;
  font-size: 30px;
  text-align: left;
  text-decoration: none;
  margin: 5px 2px;
}
.fa:hover {
    opacity: 0.7;
}
.fa-facebook {
  background: #3B5998;
  color: white;
}
.fa-linkedin {
  background: #007bb5;
  color: white;
}
.active-cyan-3 input[type=text] {
  border: 1px solid #4dd0e1;
  box-shadow: 0 0 0 1px #4dd0e1;
}

/* Style for search button image */
.search-button {
  width: 30px;
  height: 30px;
  cursor: pointer;
}
</style>

<h1></h1>

<div class="bg"></div><br>
<div class="container active-cyan-4 mb-4 inline">
    <form method="POST" action="search-property.php">
        <center>
            <div style="display: flex; align-items: center;">
                <input class="form-control mr-sm-2" type="text" placeholder="Enter location to search house." name="search_property" id="search-box" aria-label="Search" oninput="updateSearchButton()">
                <!-- Search button image -->
                <img src="search.jpeg" class="search-button disabled" onclick="submitSearch()" alt="Search">
                <!-- Mic button -->
                <img src="mic.png" width="30" height="30" style="cursor: pointer;" onclick="startVoiceRecognition()">
            </div>
        </center>
    </form>
</div>
<br><br>

<div id="propertyList">
    <?php 
    include("property-list.php");
    ?>
</div>

<br><br>

<script>
function startVoiceRecognition() {
    const SpeechRecognition = window.SpeechRecognition || window.webkitSpeechRecognition;
    const recognition = new SpeechRecognition();
    recognition.onresult = function(event) {
        const transcript = event.results[0][0].transcript;
        document.querySelector('input[name="search_property"]').value = transcript;
        document.forms[0].submit();
    }
    recognition.start();
}

 
function submitSearch() {
    document.forms[0].submit();
}

function updateSearchButton() {
    var searchInput = document.getElementById("search-box");
    var searchButton = document.querySelector(".search-button");
    if (searchInput.value.trim() !== "") {
        searchButton.classList.remove("disabled");
        searchButton.onclick = submitSearch;
    } else {
        searchButton.classList.add("disabled");
        searchButton.onclick = null;
    }
}

// Call updateSearchButton() on page load
updateSearchButton();
</script>