window.onload = function () {
	document.getElementById("menu").onclick = function () {
		var x = document.getElementById('myTopnav');
		if (x.className === "topnav") {
			x.className += " responsive";
		} else {
			x.className = "topnav";
		}
	}
};



function footer(){
var
    main = document.getElementsByTagName('main')[0],
    footer = document.getElementsByTagName('footer')[0];

    footerHeight = footer.clientHeight;
    main.style.paddingBottom = (footerHeight)+'px';
}
window.addEventListener('load',footer);
window.addEventListener('resize',footer);