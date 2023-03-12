
function updateOutput() {
  var xhr = new XMLHttpRequest();
  xhr.onreadystatechange = function() {
    if (xhr.readyState == 4 && xhr.status == 200) {
      document.getElementById("output").innerHTML = xhr.responseText;
    }
  }
  xhr.open("GET", "command.php", true);
  xhr.send();
}

setInterval(updateOutput, 1000);
