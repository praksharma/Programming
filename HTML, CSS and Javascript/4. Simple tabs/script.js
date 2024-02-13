function openTab(evt, tabName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
      tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
      tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(tabName).style.display = "block";
    evt.currentTarget.className += " active";
  }
document.getElementById("checkBtn").onclick = function() {
  var textbox = document.getElementById("readonlyTextbox");
  if (textbox.style.display === "none") {
    textbox.style.display = "block";
  } else {
    textbox.style.display = "none";
  }
};
  