var fleAbrirPopup = document.getElementById('fle-abrir-popup'),
	over = document.getElementById('over'),
	pop = document.getElementById('pop'),
	fleCerrarPopup = document.getElementById('fle-cerrar-popup');

fleAbrirPopup.addEventListener('click', function(){
	over.classList.add('active');
	pop.classList.add('active');
});

fleCerrarPopup.addEventListener('click', function(a){
	a.preventDefault();
	over.classList.remove('active');
	pop.classList.remove('active');
});
