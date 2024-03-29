const navegacion = document.querySelectorAll('.secc');

navegacion.forEach(navegacion => {
    // Agrega un 'escuchador de eventos' para el evento de clic en cada elemento 'panel'
    navegacion.addEventListener('click', () => {
        // Llama a la función 'removeActiveClasses()' para eliminar clases 'activas' de otros elementos
        RemoverClases();
        // Agrega la clase 'active' al elemento 'panel' que se hizo clic
        navegacion.classList.add('active');
    });
});

function RemoverClases(){
    navegacion.forEach(navegacion => {
        // Remueve la clase 'active' de cada elemento 'panel'
        navegacion.classList.remove('active');
    });
}