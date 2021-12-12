var puaAbrirPopup = document.getElementById('pua-abrir-popup'),
	o = document.getElementById('o'),
	p = document.getElementById('p'),
	puaCerrarPopup = document.getElementById('pua-cerrar-popup');

puaAbrirPopup.addEventListener('click', function(){
	o.classList.add('active');
	p.classList.add('active');
});

puaCerrarPopup.addEventListener('click', function(a){
	a.preventDefault();
	o.classList.remove('active');
	p.classList.remove('active');
});



var tatoAbrirPopup = document.getElementById('tato-abrir-popup'),
	tero = document.getElementById('tero'),
	gato = document.getElementById('gato'),
	tatoCerrarPopup = document.getElementById('tato-cerrar-popup');

tatoAbrirPopup.addEventListener('click', function(){
	tero.classList.add('active');
	gato.classList.add('active');
});

tatoCerrarPopup.addEventListener('click', function(a){
	a.preventDefault();
	tero.classList.remove('active');
	gato.classList.remove('active');
});



