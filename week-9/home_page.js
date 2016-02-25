document.getElementById("release-0").className = "done";

document.getElementById("release-1").style.display = "none";

document.getElementsByTagName('h1')[0].textContent = "I completed release 2";

document.getElementById("release-3").style.backgroundColor = "#955251" ;

var i;
for (i=0; i < document.getElementsByClassName("release-4").length; i++){
  document.getElementsByClassName("release-4")[i].style.fontSize = "2em";

}

var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));


