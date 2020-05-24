time();
function time() {
    var now = new Date();
    document.getElementById("time").innerHTML = now.toLocaleTimeString();
};
setInterval('time()',1000);


function fadeOut() {
    var flash = document.getElementById("flash")
    flash.style.opacity = 0;
};
setTimeout(fadeOut, 3000);